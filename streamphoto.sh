#!/usr/bin/env bash
# r - frames per second
# -r 0.1 => one image every 10 seconds
# -r 0.2 => one image every 5 seconds
#
# Note streamer seems to require image extension of .jpeg
#
# One per 10 seconds:
# streamer -t 52000 -r 0.1 -j 100 -s 1600x1200 -c /dev/video0 -o $(date +%Y-%m-%d-%H-%M-000000).jpeg
# One image per 5 seconds:
streamer -t 52000 -r 0.2 -j 100 -s 1600x1200 -c /dev/video0 -o $(date +%Y-%m-%d-%H-%M-000000).jpeg
