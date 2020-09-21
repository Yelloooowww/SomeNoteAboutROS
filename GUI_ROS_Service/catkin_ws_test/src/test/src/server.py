#!/usr/bin/env python

# from __future__ import print_function

from rospy_tutorials.srv import *


import rospy

def callback(req):
    # print("x=%s , y=%s ",req.a , req.b)
    rospy.logwarn("I heard x=%s  y=%s", req.a,req.b)
    return 1

if __name__ == "__main__":
    rospy.init_node('add_two_ints_server')
    s = rospy.Service('HI_service', AddTwoInts, callback)
    rospy.spin()
