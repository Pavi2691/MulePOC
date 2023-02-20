#!/bin/sh
cd $workspace/ops
mkdir -p Report/Jmeter/ 
cp -R $workspace/reports $workspace/ops/Report/Jmeter/
cd $workspace/ops/Report/Jmeter
rm -r *.zip
zip -r JMeterReport_`date +"%Y%m%d%H%M%S"` reports
rm -r reports
