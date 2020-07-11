#!/bin/bash
. ./oci-curl.sh

oci-curl iaas.ap-tokyo-1.oraclecloud.com POST ./instancestart.json /20160918/instances/ocid1.instance.oc1.ap-tokyo-1.anxhiljrdcap4vycbavhqjxyejveawyu5cz62f5k45ljetly3hjrcn7kkhzq
