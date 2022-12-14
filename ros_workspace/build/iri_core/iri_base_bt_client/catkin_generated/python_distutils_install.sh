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

echo_and_run cd "/home/leon/Us-Go-Repository/ros_workspace/src/iri_core/iri_base_bt_client"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/leon/Us-Go-Repository/ros_workspace/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/leon/Us-Go-Repository/ros_workspace/install/lib/python2.7/dist-packages:/home/leon/Us-Go-Repository/ros_workspace/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/leon/Us-Go-Repository/ros_workspace/build" \
    "/usr/bin/python2" \
    "/home/leon/Us-Go-Repository/ros_workspace/src/iri_core/iri_base_bt_client/setup.py" \
     \
    build --build-base "/home/leon/Us-Go-Repository/ros_workspace/build/iri_core/iri_base_bt_client" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/leon/Us-Go-Repository/ros_workspace/install" --install-scripts="/home/leon/Us-Go-Repository/ros_workspace/install/bin"
