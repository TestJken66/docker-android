#!/bin/bash


#################################################Build commond=============##########################################===
# 6.0
docker build -t budtmo/docker-android-x86-6.0:1 --build-arg TOKEN= --build-arg ANDROID_VERSION=6.0 --build-arg API_LEVEL=23         --build-arg PROCESSOR=x86 --build-arg SYS_IMG=x86 --build-arg IMG_TYPE=google_apis         --build-arg BROWSER=browser --build-arg CHROME_DRIVER=2.18         --build-arg APP_RELEASE_VERSION=1 -f docker/Emulator_x86 .
docker tag budtmo/docker-android-x86-6.0:1 budtmo/docker-android-x86-6.0:latest

# 7.0
docker build -t budtmo/docker-android-x86-7.0:1 --build-arg TOKEN= --build-arg ANDROID_VERSION=7.0 --build-arg API_LEVEL=24         --build-arg PROCESSOR=x86 --build-arg SYS_IMG=x86 --build-arg IMG_TYPE=google_apis         --build-arg BROWSER=chrome --build-arg CHROME_DRIVER=2.23         --build-arg APP_RELEASE_VERSION=1 -f docker/Emulator_x86 .
docker tag budtmo/docker-android-x86-7.0:1 budtmo/docker-android-x86-7.0:latest

# 7.1.1
docker build -t budtmo/docker-android-x86-7.1.1:1 --build-arg TOKEN= --build-arg ANDROID_VERSION=7.1.1 --build-arg API_LEVEL=25         --build-arg PROCESSOR=x86 --build-arg SYS_IMG=x86 --build-arg IMG_TYPE=google_apis         --build-arg BROWSER=chrome --build-arg CHROME_DRIVER=2.28         --build-arg APP_RELEASE_VERSION=1 -f docker/Emulator_x86 .
docker tag budtmo/docker-android-x86-7.1.1:1 budtmo/docker-android-x86-7.1.1:latest

# 8.0
docker build -t budtmo/docker-android-x86-8.0:1 --build-arg TOKEN= --build-arg ANDROID_VERSION=8.0 --build-arg API_LEVEL=26         --build-arg PROCESSOR=x86 --build-arg SYS_IMG=x86 --build-arg IMG_TYPE=google_apis         --build-arg BROWSER=chrome --build-arg CHROME_DRIVER=2.31         --build-arg APP_RELEASE_VERSION=1 -f docker/Emulator_x86 .
docker tag budtmo/docker-android-x86-8.0:1 budtmo/docker-android-x86-8.0:latest

# 8.1
docker build -t budtmo/docker-android-x86-8.1:1 --build-arg TOKEN= --build-arg ANDROID_VERSION=8.1 --build-arg API_LEVEL=27         --build-arg PROCESSOR=x86 --build-arg SYS_IMG=x86 --build-arg IMG_TYPE=google_apis         --build-arg BROWSER=chrome --build-arg CHROME_DRIVER=2.33         --build-arg APP_RELEASE_VERSION=1 -f docker/Emulator_x86 .
docker tag budtmo/docker-android-x86-8.1:1 budtmo/docker-android-x86-8.1:latest

# 9.0
docker build -t budtmo/docker-android-x86-9.0:1 --build-arg TOKEN= --build-arg ANDROID_VERSION=9.0 --build-arg API_LEVEL=28         --build-arg PROCESSOR=x86_64 --build-arg SYS_IMG=x86_64 --build-arg IMG_TYPE=google_apis         --build-arg BROWSER=chrome --build-arg CHROME_DRIVER=2.40         --build-arg APP_RELEASE_VERSION=1 -f docker/Emulator_x86 .
docker tag budtmo/docker-android-x86-9.0:1 budtmo/docker-android-x86-9.0:latest

# 10.0
docker build -t budtmo/docker-android-x86-10.0:1 --build-arg TOKEN= --build-arg ANDROID_VERSION=10.0 --build-arg API_LEVEL=29         --build-arg PROCESSOR=x86 --build-arg SYS_IMG=x86 --build-arg IMG_TYPE=google_apis         --build-arg BROWSER=chrome --build-arg CHROME_DRIVER=74.0.3729.6         --build-arg APP_RELEASE_VERSION=1 -f docker/Emulator_x86 .
docker tag budtmo/docker-android-x86-10.0:1 budtmo/docker-android-x86-10.0:latest

# 11.0
docker build -t budtmo/docker-android-x86-11.0:1 --build-arg TOKEN= --build-arg ANDROID_VERSION=11.0 --build-arg API_LEVEL=30         --build-arg PROCESSOR=x86 --build-arg SYS_IMG=x86 --build-arg IMG_TYPE=google_apis         --build-arg BROWSER=chrome --build-arg CHROME_DRIVER=83.0.4103.39         --build-arg APP_RELEASE_VERSION=1 -f docker/Emulator_x86 .
docker tag budtmo/docker-android-x86-11.0:1 budtmo/docker-android-x86-11.0:latest

# 12.0

docker build -t budtmo/docker-android-x86-12.0:1 --build-arg TOKEN= --build-arg ANDROID_VERSION=12.0 --build-arg API_LEVEL=31         --build-arg PROCESSOR=x86_64 --build-arg SYS_IMG=x86_64 --build-arg IMG_TYPE=google_apis         --build-arg BROWSER=chrome --build-arg CHROME_DRIVER=93.0.4577.15         --build-arg APP_RELEASE_VERSION=1 -f docker/Emulator_x86 .
docker tag budtmo/docker-android-x86-12.0:1 budtmo/docker-android-x86-12.0:latest


##  创建模拟器
docker run --privileged -d -p 6080:6080 -p 5554:5554 -p 5555:5555 -e DEVICE="Samsung Galaxy S6" --name ac budtmo/docker-android-x86-8.1

docker run --privileged -d -p 6080:6080 -p 5554:5554 -p 5555:5555 -e DEVICE="Samsung Galaxy S6" --name ac budtmo/docker-android-x86-12.0
