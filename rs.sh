#!/bin/bash

# 8.1
docker build -t budtmo/docker-android-x86-8.1:latest  --build-arg TOKEN= --build-arg ANDROID_VERSION=8.1 --build-arg API_LEVEL=27 --build-arg PROCESSOR=x86 --build-arg SYS_IMG=x86 --build-arg IMG_TYPE=google_apis --build-arg BROWSER=chrome --build-arg CHROME_DRIVER=2.33 --build-arg APP_RELEASE_VERSION= -f docker/Emulator_x86 .
