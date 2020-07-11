#!/bin/bash
. ./oci-curl.sh

oci-curl iaas.ap-tokyo-1.oraclecloud.com GET "/20160918/instances?compartmentId=ocid1.tenancy.oc1..aaaaaaaazbumdodbygqaby3ryd3bav5vuiwrn2ujhgqj7nvsncn2jxampv2a" | jq '.[] | .displayName,.id'
