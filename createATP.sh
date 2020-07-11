#!/bin/bash
. ./oci-curl.sh

oci-curl database.ap-tokyo-1.oraclecloud.com POST ./requestATP.json /20160918/AutonomousDatabases
