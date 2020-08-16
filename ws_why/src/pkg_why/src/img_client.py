import sys
import rospy
from pkg_why.srv import *

def dosomething(x, y):
    print("input:color=",x,"points=" ,y)
    rospy.wait_for_service('img_service')
    print('start dosomrthing')
    try:
        get_srv = rospy.ServiceProxy('img_service',img_srv)
        print('???',get_srv )
        rrrrr=get_srv(x,y)
        print('rrrrr=',rrrrr)
        # return rrrrr.response
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return ("sys.argv[0]=%s ",sys.argv[0])

if __name__ == "__main__":
    if len(sys.argv) == 3:
        x = str(sys.argv[1])
        y = int(sys.argv[2])
    else:
        print(usage())
        sys.exit(1)
    dosomething(x, y)
