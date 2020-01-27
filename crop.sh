#!/bin/sh
IFILE=$1
DIR=$2
if [ ! -f $IFILE ]; then
  echo Cannot find ${IFILE}
fi
if [ ! -d $DIR ]; then
  echo Cannot find directory ${IDR}
fi
convert ${IFILE} -crop 1600x1050+0+150 ${DIR}/${IFILE}
