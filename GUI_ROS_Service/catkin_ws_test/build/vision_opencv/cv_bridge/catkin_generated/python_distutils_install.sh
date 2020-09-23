#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/yellow/catkin_ws_test/src/vision_opencv/cv_bridge"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/yellow/catkin_ws_test/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/yellow/catkin_ws_test/install/lib/python2.7/dist-packages:/home/yellow/catkin_ws_test/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/yellow/catkin_ws_test/build" \
    "/usr/bin/python2" \
    "/home/yellow/catkin_ws_test/src/vision_opencv/cv_bridge/setup.py" \
     \
    build --build-base "/home/yellow/catkin_ws_test/build/vision_opencv/cv_bridge" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/yellow/catkin_ws_test/install" --install-scripts="/home/yellow/catkin_ws_test/install/bin"
