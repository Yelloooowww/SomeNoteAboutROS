#!/usr/bin/python
import rospy
import numpy as np
import cv2  # OpenCV module
import time
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge, CvBridgeError
# from std_msgs.msg import String

def talker():
    pub = rospy.Publisher('img_input', Image)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz

    bridge = CvBridge()

    cam=cv2.VideoCapture(0)
    while not rospy.is_shutdown():
        ret,img=cam.read()
        # image_message = bridge.cv2_to_imgmsg(img, encoding="passthrough")
        image_message = bridge.cv2_to_imgmsg(img, encoding="bgr8")
        pub.publish(image_message)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
