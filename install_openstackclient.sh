#!/bin/bash
virtualenv /root/openstack-client
source /root/openstack-client/bin/activate
cd /root/openstack-client
pip install python-openstackclient -c ../upper-constraints.txt
deactivate
mv /root/admin-openrc.sh /root/openstack-client
rm /root/upper-constraints.txt
rm /root/install_openstackclient.sh
