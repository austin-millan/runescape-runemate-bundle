#!/bin/bash

mkdir -p '/tmp/RuneMate'
wget -4 -O /tmp/RuneMate/RuneMate.jar https://www.runemate.com/client/download.php
wget -4 -O /tmp/RuneMate_setup.sh https://cdn.runemate.com/builds/2.107.1.0/linux/amd64/RuneMate_setup.sh
chmod +x /tmp/RuneMate_setup.sh
sh -c 'echo "o\r/usr/local/bin\ry\ry\rn\r\r\r"  | /tmp/RuneMate_setup.sh'
rm -rf /tmp/RuneMate
