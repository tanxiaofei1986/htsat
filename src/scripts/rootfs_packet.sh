#!/bin/bash

temp_dir=rootfs_packet_dir

git clone https://github.com/tanxiaofei1986/htsat $temp_dir

cd $temp_dir

rm include -rf
rm src -rf
rm patch -rf
rm build.sh -f
rm .git -rf

tar cvf ../rootfs_packet.tar.gz ./

cd ../
rm $temp_dir -rf

