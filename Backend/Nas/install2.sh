#!/bin/bash

apt-get update && apt-get install -y software-properties-common
add-apt-repository ppa:gluster/glusterfs-3.7
apt-get update && apt-get install -y glusterfs-server
update-rc.d glusterfs-server defaults
echo "192.168.33.11 gluster1.tracks.cdpsfy.es gluster1" > /etc/hosts
echo "192.168.33.12 gluster2.tracks.cdpsfy.es gluster2" >> /etc/hosts
gluster peer probe gluster1
gluster peer status
gluster volume create volume1 replica 2 transport tcp gluster1:/brick gluster2:/brick force
gluster volume start volume1
