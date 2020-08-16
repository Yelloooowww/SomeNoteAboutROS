#!/usr/bin/python
import rospy
rospy.init_node('i_python_node')
import numpy as np
import cv2  # OpenCV module
import time
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge, CvBridgeError
rospy.init_node("detection",anonymous=True)
output_result = rospy.Publisher('image_result', Image, queue_size=10)
# Bridge to convert ROS Image type to OpenCV Image type
cv_bridge = CvBridge()




def rosImageCallback(msg):
    cv_image = cv_bridge.imgmsg_to_cv2(msg, "bgr8")
    blurred_image = cv2.GaussianBlur(cv_image, (5, 5), 0)
    hsv = cv2.cvtColor(blurred_image, cv2.COLOR_BGR2HSV)
    lower_red = np.array([0, 50, 50])
    upper_red = np.array([180, 255, 255])
    mask_red = cv2.inRange(hsv, lower_red, upper_red)
    # detect green
    lower_green = np.array([52, 135, 55])
    upper_green = np.array([85, 255, 255])
    mask_green = cv2.inRange(hsv, lower_green, upper_green)
    # detect blue
    lower_blue = np.array([89, 127, 61])
    upper_blue = np.array([168, 255, 255])
    mask_blue = cv2.inRange(hsv, lower_blue, upper_blue)
    mask = mask_red + mask_green + mask_blue
    result = cv2.bitwise_and (cv_image, cv_image, mask=mask)
    (contours,_) = cv2.findContours(mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
    
    for contour in contours:
    	M = cv2.moments(contour)
    	area = cv2.contourArea(contour)
    	if area > 20000:
    		cx = int(M['m10']/M['m00'])
    		cy = int(M['m01']/M['m00'])
    		peri = cv2.arcLength(contour, True)
    		approx = cv2.approxPolyDP(contour, 0.03*peri, True)
    		cn = 0
    		cs = 0


    		if len (approx) == 3:
    			shape = "Triangle"
    			cs = 2
    		elif len (approx) == 4:
    			shape = "Rectangle"
    			cs = 3
    		elif 5 <= len (approx) <= 8:
    			shape = "Circle"
    			cs = 1
    		else:
    			shape = "not detect shape"
    			cs = 0


    		c = image[cy][cx]
    		if c[0] > c[1] and c[0] > c[2] and c[0] > 80:
    			color = "Blue"
    			cn = 3
    		elif c[1] > c[0] and c[1] > c[2] and c[1] > 80:
    			color = "Green"
    			cn = 2
    		elif c[2] > c[0] and c[2] > c[1] and c[2] > 80:
    			color = "Red"
    			cn = 1
    		else:
    			color = "not detect color"
    			cn = 0
    		# print(s.readline())
    		#print("shape: %d / color: %d"%(cs,cn))
    		cv2.drawContours(result, contour, -1, (0, 255, 0), 3)
    		text = "{} / {} / {}".format(color, shape, act)
    		cv2.putText(image, text, (cx, cy), font, 0.5, (255, 255, 255), 2)
    		cv2.putText(result, text, (cx, cy), font, 0.5, (255, 255, 255), 2)
    		#print(s.readline())
            # time.sleep(1)
    output_result.publish(cv_bridge.cv2_to_imgmsg(result, encoding="passthrough")


if __name__=="__main__":
	rospy.Subscriber('img_input',Image,rosImageCallback)
	rospy.spin()
