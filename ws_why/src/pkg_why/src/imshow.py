#!/usr/bin/python
# import rospy
import cv2

# rospy.init_node('test2', anonymous=True)
# print('ros node init')

cam=cv2.VideoCapture(0)
while True:
    ret,img=cam.read()
    vis=img.copy()
    cv2.imshow('getCamera',vis)
    k=cv2.waitKey(5)
    if k==27:
        cv2.destroyAllWindow()
        break
