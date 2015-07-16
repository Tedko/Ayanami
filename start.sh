#!/bin/sh
TIME=`date "+%Y%m%d_%H%M%S"`
vsql -f ~/Ayanami/run.sql > ${TIME}_output.txt

