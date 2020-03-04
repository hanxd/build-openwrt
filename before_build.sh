#!/bin/bash
cd /home/runner/openwrt

# Change timezone
sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate

# Enter your commands here, e.g.
# echo "Start build!"
make defconfig
