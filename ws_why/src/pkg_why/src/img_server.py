#!/usr/bin/env python
# import ../srv/img_srv
import rospy
from pkg_why.srv import *


def handle(req):
    print('HI')
    print("color=",req.color,"points=" ,req.point)
    return 1

def srv_server():
    rospy.init_node('img_server')
    s = rospy.Service('img_service', img_srv, handle)
    print("Ready ~~~~~~~~~~",s)
    rospy.spin()

if __name__ == "__main__":
    srv_server()
