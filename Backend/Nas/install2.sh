#!/bin/bash

apt-get update && apt-get install -y software-properties-common
add-apt-repository ppa:gluster/glusterfs-3.7
apt-get update && apt-get install -y glusterfs-server nagios-nrpe-server
cp /vagrant/check_glusterfs /usr/lib/nagios/plugins/check_glusterfs
cp /vagrant/nrpe /etc/sudoers.d/nrpe
cp /vagrant/nrpe.cfg /etc/nagios
service nagios-nrpe-server restart
update-rc.d glusterfs-server defaults
echo "192.168.33.11 gluster1.tracks.cdpsfy.es gluster1" > /etc/hosts
echo "192.168.33.12 gluster2.tracks.cdpsfy.es gluster2" >> /etc/hosts
echo "192.168.33.13 gluster3.tracks.cdpsfy.es gluster3" >> /etc/hosts
gluster peer probe gluster1
gluster peer probe gluster2
gluster peer status
gluster volume create volume1 replica 3 transport tcp gluster1:/brick gluster2:/brick gluster3:/brick force
gluster volume start volume1
