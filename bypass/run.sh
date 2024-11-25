#!/bin/sh

Xvfb :99 -ac -screen 0 640x480x8 -nolisten tcp &
uvicorn server:app --host 0.0.0.0 --port 8000

# https://github.com/SeleniumHQ/docker-selenium/blob/trunk/NodeBase/Dockerfile
# https://github.com/SeleniumHQ/docker-selenium/blob/trunk/NodeBase/start-xvfb.sh
