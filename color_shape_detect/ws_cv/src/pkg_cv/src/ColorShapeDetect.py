#!/usr/bin/python

import cv2
import numpy as np
import serial
import time
import rospy
from pkg_cv.srv import *
from sensor_msgs.msg import Image,CameraInfo
from cv_bridge import CvBridge,CvBridgeError



rospy.init_node("ColorShapeDetect",anonymous=True)
output_result=rospy.Publisher('img_output',Image,queue_size=10)
cv_bridge=CvBridge()


class choose_color_shape():
	def __init__(self):
		self.See_table=np.zeros((4,5))
		self.colorlist=['Blue','Red','Yellow','Green']
		self.shapelist=['triangle','rectangle','Pentagon','Hexagon','Circle']
		for c in range(4):
			for p in range(5):
				self.See_table[c][p]=True

	def maskColorAndShape(self):
		self.blurred_image = cv2.GaussianBlur(self.img_input, (5, 5), 0)
		self.hsv = cv2.cvtColor(self.blurred_image , cv2.COLOR_BGR2HSV)
		# detect red
		lower_red = np.array([0, 40, 51])
		upper_red = np.array([10, 255, 255])
		mask_red = cv2.inRange(self.hsv, lower_red, upper_red)

		# detect green
		lower_green = np.array([52, 135, 55])
		upper_green = np.array([85, 255, 255])
		mask_green = cv2.inRange(self.hsv, lower_green, upper_green)

		# detect blue
		lower_blue = np.array([89, 127, 61])
		upper_blue = np.array([168, 255, 255])
		mask_blue = cv2.inRange(self.hsv, lower_blue, upper_blue)

		# detect yellow
		lower_yellow = np.array([21, 39, 64])
		upper_yellow = np.array([40, 255, 255])
		mask_yellow = cv2.inRange(self.hsv, lower_yellow, upper_yellow)

		self.mask=mask_red+ mask_green +mask_blue +mask_yellow
		self.mask_result = cv2.bitwise_and (self.img_input, self.img_input, mask=self.mask)


		( contours,_) = cv2.findContours(self.mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
		for contour in contours:
			M = cv2.moments(contour)
			area = cv2.contourArea(contour)
			if (not M['m00']==0) and (area>100):
				cx = int(M['m10']/M['m00'])
				cy = int(M['m01']/M['m00'])

				if not mask_blue[cy][cx]==0:color=0 #'Blue'
				elif not mask_red[cy][cx]==0:color=1 #'Red'
				elif not mask_yellow[cy][cx]==0:color=2 #'Yellow'
				elif not mask_green[cy][cx]==0:color=3 #'Green'
				else:color=-1


				peri=cv2.arcLength(contour,True)
				approx=cv2.approxPolyDP(contour,0.03*peri,True)
				points=len(approx)
				if points>7 : points=7

				if color>=0: #in {Blue,Red,Yellow,Green}
					if self.See_table[color][points-3]==True:
						cv2.drawContours(self.mask_result, [contour], -1, (0, 255, 0), 2)
						text="{},{},{}".format(self.colorlist[color],self.shapelist[points-3],points)
						cv2.putText(self.mask_result,text,(cx,cy),cv2.FONT_HERSHEY_COMPLEX,0.4,(255,255,255),1)
					else:
						cv2.drawContours(self.mask_result, [contour], -1, (0, 0, 0), -1) #filled in black

	def check_user_input(self,input0,input1,input2):
		print('check_user_input:',input0,input1,input2)
		x= -1
		if (input0 =='Blue') or (str(input0) =='blue'):x=0
		if (input0 =='Red') or (input0 =='red'):x=1
		if (input0 =='Yellow') or (input0 =='yellow'): x=2
		if (input0 =='Green') or (input0 =='green'): x=3
		if input1>7:input1=7 #Circle
		if input2==1:self.See_table[x][input1-3]=True #able to see
		if input2==0:self.See_table[x][input1-3]=False #unable to see


def handle(req):
	MyDetect.check_user_input(req.color,req.point,req.on_off)
	return 1

def rosImageCallback(msg):
	MyDetect.img_input=cv_bridge.imgmsg_to_cv2(msg,'bgr8') #read input from topic
	MyDetect.maskColorAndShape()
	output_result.publish(cv_bridge.cv2_to_imgmsg(  MyDetect.mask_result ,encoding='bgr8'))


if __name__ == "__main__":
	MyDetect=choose_color_shape()
	rospy.Service('img_service', img_srv, handle)
	rospy.Subscriber('img_input',Image,rosImageCallback)
	rospy.spin()
