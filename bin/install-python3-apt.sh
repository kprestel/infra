#!/bin/bash
set -e
cd /tmp
apt-get download python3-apt
source /root/ansible/bin/activate
dpkg -x python3-apt_1.8.4.1_amd64.deb python3-apt
cp -r /tmp/python3-apt/usr/lib/python3/dist-packages/* /root/ansible/lib/python3.7/site-packages/
cd /root/ansible/lib/python3.7/site-packages/
mv apt_pkg.cpython-37m-x86_64-linux-gnu.so apt_pkg.so
mv apt_inst.cpython-37m-x86_64-linux-gnu.so apt_inst.so

