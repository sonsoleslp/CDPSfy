#!/bin/bash

# mkdir ~/gluster
sudo umount -f -l ~/gluster
sudo mount -t nfs gluster3:/volume1 ~/gluster
sudo convoy daemon --drivers vfs --driver-opts vfs.path=~/gluster
