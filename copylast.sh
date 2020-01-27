#!/bin/sh
SLEEP=10
while true; do
  # scp $(ls -tr *.jpeg | tail -1) box:Pictures/StarDestroyer/LAST/last.jpg
  LAST_IMAGE=$(ls -tr *.jpeg | tail -1)
  cp -p $LAST_IMAGE /home/spk/Pictures/LAST/last.jpg
  scp $LAST_IMAGE box:Pictures/LAST/last.jpg
  sleep $SLEEP
done
