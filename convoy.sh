#!/bin/bash

sudo umount -f -l /gluster
#sudo mount -t nfs gluster2:/volume1 /gluster
sudo convoy daemon --drivers vfs --driver-opts vfs.path=/gluster
