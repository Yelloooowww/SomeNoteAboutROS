import cv2
import numpy as np
import serial
import time
import rospy
from sensor_msgs.msg import Image,CameraInfo
from cv_bridge import CvBridge,CvBridgeError
rospy.init_node("detection",anonymous=True)
output_result=rospy.Publisher('img_output',Image,queue_size=10)
cv_bridge=CvBridge()
font = cv2.FONT_HERSHEY_COMPLEX

def rosImageCallback(msg):
	image=cv_bridge.imgmsg_to_cv2(msg,'bgr8')
	blurred_image = cv2.GaussianBlur(image, (5, 5), 0)
	hsv = cv2.cvtColor(blurred_image, cv2.COLOR_BGR2HSV)


	# detect red
	lower_red = np.array([0, 40, 51])
	upper_red = np.array([4, 255, 255])
	mask_red = cv2.inRange(hsv, lower_red, upper_red)

	# detect green
	lower_green = np.array([52, 135, 55])
	upper_green = np.array([85, 255, 255])
	mask_green = cv2.inRange(hsv, lower_green, upper_green)

	# detect blue
	lower_blue = np.array([89, 127, 61])
	upper_blue = np.array([168, 255, 255])
	mask_blue = cv2.inRange(hsv, lower_blue, upper_blue)

	# detect yellow
	lower_yellow = np.array([21, 39, 64])
	upper_yellow = np.array([40, 255, 255])
	mask_yellow = cv2.inRange(hsv, lower_yellow, upper_yellow)

	mask = mask_red + mask_green + mask_blue + mask_yellow

	result = cv2.bitwise_and (image, image, mask=mask)

	(contours,_) = cv2.findContours(mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
	# (_,contours,_) = cv2.findContours(mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)

	for contour in contours:
		M = cv2.moments(contour)

		area = cv2.contourArea(contour)
		if area > 20000:
			cx = int(M['m10']/M['m00'])
			cy = int(M['m01']/M['m00'])
			peri = cv2.arcLength(contour, True)
			approx = cv2.approxPolyDP(contour, 0.03*peri, True)



			if len (approx) == 3:
				shape = "Triangle"
				points='3'
			elif len (approx) == 4:
				shape = "Rectangle"
				points='4'
			elif len (approx) == 5:
				shape = "Pentagon"
				points='5'
			elif len (approx) == 6:
				shape = "Hexagon"
				points='6'
			elif 7 <= len (approx) <= 8:
				shape = "Circle"
				points='7'
			else:
				shape = "not detect shape"
				points='???'


			c = hsv[cy][cx]
			if not mask_blue[cy][cx]==0:
				colorrrr='Blue'
			elif not mask_red[cy][cx]==0:
				colorrrr='Red'
			elif not mask_yellow[cy][cx]==0:
				colorrrr='Yellow'
			elif not mask_green[cy][cx]==0:
				colorrrr='Green'
			else:
				colorrrr='None'


			cv2.drawContours(result, contour, -1, (0, 255, 0), 3)
			text = "{} / {} / {}".format(colorrrr, shape ,points)
			print(text)
			cv2.putText(result, text, (cx, cy), font, 0.5, (255, 255, 255), 2)
	output_result.publish(cv_bridge.cv2_to_imgmsg(result,encoding="passthrough"))

if __name__=="__main__":
	rospy.Subscriber('img_input',Image,rosImageCallback)
	rospy.spin()