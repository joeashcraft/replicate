#!/bin/bash
#rm -rf /root/replicate/
#rm -rf /root/.ssh/
#mkdir -p /root/.ssh/

git clone https://github.com/jpmontez/replicate.git

## if public_keys is different, then update authorized_keys
[[ $(diff /root/replicate/provisioning/files/public_keys /root/.ssh/authorized_keys) ]] && \
cp -f /root/replicate/provisioning/files/public_keys /root/.ssh/authorized_keys

chown root:root /root/.ssh/authorized_keys
chown root:root /root/.ssh/
chmod 600 /root/.ssh/authorized_keys
chmod 700 /root/.ssh/
