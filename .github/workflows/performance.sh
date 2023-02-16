#!/bin/sh
cd $workspace/ops
mkdir -p Report/Jmeter/ 
cp -R $workspace/reports $workspace/ops/Report/Jmeter/
cd $workspace/ops/Report/Jmeter
zip -r JMeterReport_`date +"%Y%m%d%H%M%S"` reports
rm -r reports
git pull
git config --global user.email "$committerEmail"
git config --global user.name "$committerName"
git add .
git commit -m "Jmeter Report"
git push
