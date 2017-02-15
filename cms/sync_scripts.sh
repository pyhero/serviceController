#!/bin/bash
#
# Author: Panda
# Update: 20160701

DIR=$(cd `dirname $0`;echo $PWD)
USER=xx
scrpts=$DIR/cms.10.*
cd $DIR
for s in $(ls $scrpts|awk -F'/' '{print $NF}');do
	HOST=$(echo $s | sed 's/cms\.//')
	/usr/bin/rsync -avze ssh $s timeout $USER@$HOST:/home/xx/
done
