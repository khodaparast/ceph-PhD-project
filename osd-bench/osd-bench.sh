#!/bin/bash

for osd in $(ceph osd ls);do
	ceph osd tree | grep -w osd.$osd | awk '{print $2}'
	ceph osd find $osd
	ceph tell osd.$osd bench
done
