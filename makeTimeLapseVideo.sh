#!/bin/sh
# ffmpeg -framerate 25 -r 5 -i MFBuild_%4d.jpg -s 720x480 mfBuildCrop.mp4
# 22:09
# ffmpeg -framerate 25 -r 10 -i MFBuild_%4d.jpg -s 720x480 mfBuildCrop.mp4
# 11:04
# ffmpeg -framerate 25 -r 20 -i MFBuild_%4d.jpg -s 720x480 mfBuildCrop.mp4
# 5:48
# ffmpeg -framerate 30 -i SD_%5d.jpg -s 720x480 StarDestroyerBuild_30.mp4
# x:yz
ffmpeg -framerate 60 -i SD_%5d.jpg -s 720x480 StarDestroyerBuild_60.mp4

