#!/usr/bin/env python

import numpy as np
import cv2
import roslib
import rospy
from cv_bridge import CvBridge, CvBridgeError
import math

from sensor_msgs.msg import CameraInfo, CompressedImage, Image
from geometry_msgs.msg import PoseArray, Pose,PoseStamped,Twist

import message_filters

from rospy_tutorials.srv import *
from subt_msgs.srv import int8
from subt_msgs.msg import ArtifactPoseArray
from subt_msgs.msg import ArtifactPose
from std_msgs.msg import String
from std_msgs.msg import Int16MultiArray

class GUI_server():
	def __init__(self):
		rospy.loginfo("Wait for Camera Info")
		info = rospy.wait_for_message('camera/color/camera_info',CameraInfo)
		self.fx = info.P[0]
		self.fy = info.P[5]
		self.cx = info.P[2]
		self.cy = info.P[6]
		print "camera_info: ", self.fx, self.fy, self.cx, self.cy

		## for opencv
		self.cv_bridge = CvBridge()

		## msg filter sync rgb and d images
		image_sub1 = message_filters.Subscriber('camera/color/image_raw', Image)
		depth_sub1 = message_filters.Subscriber('camera/aligned_depth_to_color/image_raw', Image)
		ts1 = message_filters.ApproximateTimeSynchronizer([image_sub1, depth_sub1], 10, slop=0.1)
		ts1.registerCallback(self.img_cb)

		self.pub_artifact_pose = rospy.Publisher("artifact_pose", ArtifactPoseArray, queue_size = 1)
		self.pub_cmd_vel = rospy.Publisher("cmd_vel", Twist, queue_size = 1)

		#Subscriber
		rospy.Subscriber("ui_position", Int16MultiArray, self.ui_position_callback)
		rospy.Subscriber("ui_manual_cmd_vel", String, self.gui_server_cmd_vel_callback)


		self.movegoal=PoseStamped()
		self.obj_pose=ArtifactPose()
		self.obj_pose_arr=ArtifactPoseArray()
		self.obj_pose.probability=1
		self.obj_pose.Class="backpack"
		self.obj_pose_arr.header.frame_id="camera_middle_link"


		self.gui_x= -1
		self.gui_y= -1
		rospy.loginfo("init done")


	def gui_server_cmd_vel_callback(self,msg):
		vel_msg = Twist()
		if msg.data=="up":
			rospy.logwarn("I heard turn up")
			vel_msg.linear.x=1
			vel_msg.linear.y=1
			vel_msg.linear.z=1
			vel_msg.angular.x = 1
			vel_msg.angular.y = 1
			vel_msg.angular.z = 1
		elif msg.data=="down":
			rospy.logwarn("I heard turn down")
			vel_msg.linear.x=2
			vel_msg.linear.y=2
			vel_msg.linear.z=2
			vel_msg.angular.x = 2
			vel_msg.angular.y = 2
			vel_msg.angular.z = 2
		elif msg.data=="left":
			rospy.logwarn("I heard turn left")
			vel_msg.linear.x=3
			vel_msg.linear.y=3
			vel_msg.linear.z=3
			vel_msg.angular.x = 3
			vel_msg.angular.y = 3
			vel_msg.angular.z = 3
		elif msg.data=="right":
			rospy.logwarn("I heard turn right")
			vel_msg.linear.x=4
			vel_msg.linear.y=4
			vel_msg.linear.z=4
			vel_msg.angular.x = 4
			vel_msg.angular.y = 4
			vel_msg.angular.z = 4

		self.pub_cmd_vel.publish(vel_msg)
		return


	def ui_position_callback(self,msg):
		self.gui_x= msg.data[0]
		self.gui_y= msg.data[1]
		rospy.logwarn("I heard gui_x=%s  gui_y=%s", msg.data[0],msg.data[1])
		self.pub_artifact_pose.publish(self.obj_pose_arr)
		rospy.logwarn("PUB")
		return

	def img_cb(self, rgb_msg, depth_msg):

		cv_image = self.cv_bridge.imgmsg_to_cv2(rgb_msg, "bgr8")
		cv_depth = self.cv_bridge.imgmsg_to_cv2(depth_msg, "16UC1")

		zc = cv_depth[self.gui_y, self.gui_x]
		zc = float(zc)/1000. # 1000. for D435
		rx, ry, rz = self.getXYZ(self.gui_x /1.0 , self.gui_y, zc/1.0 )
		self.obj_pose.pose.position.x=rx
		self.obj_pose.pose.position.y=ry
		self.obj_pose.pose.position.z=rz
		self.obj_pose_arr.header.stamp=rgb_msg.header.stamp
		self.obj_pose_arr.count =1
		self.obj_pose_arr.camera = "camera"

		self.movegoal.header=self.obj_pose_arr.header
		self.movegoal.pose=self.obj_pose
		self.obj_pose_arr.pose_array=[]
		self.obj_pose_arr.pose_array.append(self.obj_pose)




	def getXYZ(self, x, y, zc):
		x = float(x)
		y = float(y)
		zc = float(zc)
		inv_fx = 1.0/self.fx
		inv_fy = 1.0/self.fy
		x = (x - self.cx) * zc * inv_fx
		y = (y - self.cy) * zc * inv_fy
		return zc, -1*x, -1*y



if __name__ == '__main__':
	rospy.init_node('duckie_detection_node',anonymous=False)
	duckie_detection = GUI_server()
	rospy.loginfo("start py_server")
	rospy.spin()
