#!/bin/bash
. ./oci-curl.sh

### section1 get whole infomation from boot volume ###
#ask the bootvolumeId and get the information of it
echo "we will get information about the boot volume you want"
sleep 1
echo -n "Please input bootvolume OCID:"
read str


oci-curl iaas.ap-tokyo-1.oraclecloud.com GET /20160918/bootVolumes/$str | jq .


### section2 filter the info by inputting the name ###
echo "if you want filter, then input the key. Separator is ,(comma)"
sleep 1
#read -p "Please input key(example: id|sizeInGBs): \n"
