#!/bin/bash

export ANDROID_SDK_ROOT="/home/ubuntu/android-sdk"
export ANDROID_NDK_ROOT="/home/ubuntu/android-sdk/ndk-bundle"

android_wd=$1
android_file=$2
project_dir=$3

androiddeployqt_58="/home/ubuntu/Qt/5.8/android_armv7/bin/androiddeployqt"
qmake_armv7_58="/home/ubuntu/Qt/5.8/android_armv7/bin/qmake"

INSTALL_ROOT="/home/ubuntu/workspace/$android_wd/android-build"

mkdir -p /home/ubuntu/workspace/$android_wd

# build android
cd /home/ubuntu/workspace/$android_wd/
$qmake_armv7_58 $project_dir -spec android-g++
make INSTALL_ROOT=$INSTALL_ROOT install
$androiddeployqt_58 --gradle --input $android_file --output android-build
