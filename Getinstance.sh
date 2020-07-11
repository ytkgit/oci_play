#!/bin/bash
. ./oci-curl.sh

#All amount of instance info
oci-curl iaas.ap-tokyo-1.oraclecloud.com GET /20160918/instances/ocid1.instance.oc1.ap-tokyo-1.anxhiljrdcap4vycbavhqjxyejveawyu5cz62f5k45ljetly3hjrcn7kkhzq | jq .

#narrow down to shape and compartmentId
echo ""
echo ""
echo ""
echo "excerpt only Lifecycle, shape, compartmentId"
oci-curl iaas.ap-tokyo-1.oraclecloud.com GET /20160918/instances/ocid1.instance.oc1.ap-tokyo-1.anxhiljrdcap4vycbavhqjxyejveawyu5cz62f5k45ljetly3hjrcn7kkhzq | jq . | egrep -i "lifecycle|shape|compartment" | egrep -i -v "shapeConfig"
