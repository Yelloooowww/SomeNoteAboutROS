#!/usr/bin/python


import sys
import rospy
from pkg_cv.srv import *

def dosomething(x,y,z):
    rospy.wait_for_service('img_service')
    try:
        get_srv = rospy.ServiceProxy('img_service',img_srv)
        get_srv(x,y,z)
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return ("sys.argv[0]=%s ",sys.argv[0])

if __name__ == "__main__":
    if len(sys.argv) == 4:
        x = str(sys.argv[1])
        y = int(sys.argv[2])
        z = int(sys.argv[3])
    else:
        print(usage(),'?????????????')
        sys.exit(1)
    dosomething(x,y,z)
