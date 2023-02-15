#!/bin/sh
cd /home/runner/work/MulePOC/MulePOC/ops
mkdir -p Report/Jmeter/ 
cp -R $/home/runner/work/MulePOC/MulePOC/reports /home/runner/work/MulePOC/MulePOC/ops/Report/Jmeter/
cd /home/runner/work/MulePOC/MulePOC/ops/Report/Jmeter
zip -r JMeterReport_`date +"%Y%m%d%H%M%S"` reports
rm -r reports
git config --global user.email "${{ env.committerEmail }}"
git config --global user.name "${{ env.committerName }}"
git add .
git commit -m "Jmeter Report"
git push
