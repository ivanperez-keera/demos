#!/usr/bin/env bash

ORG=jaxa
IMAGE=racs2_demos_on_spaceros
TAG=latest

VCS_REF=""
VERSION=preview

# Exit script with failure if build fails
set -eo pipefail

echo ""
echo "##### Building RACS2 Demo on Space ROS Docker Image #####"
echo "##### moveit2 -> space_robots -> racs2_demos_on_spaceros #####"
echo ""

cd docker/moveit2
./build.sh
cd ../space_robots
./build.sh
cd ../racs2_demos_on_spaceros
./build.sh
cd ..
cd ..
```

echo ""
echo "##### Done! #####"

