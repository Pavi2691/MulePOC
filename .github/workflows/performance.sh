#!/bin/sh
echo "GITHUB_WORKSPACE=${{ github.workspace }}"
cd ${{ github.workspace }}/ops
mkdir -p Report/Jmeter/ 
cp -R ${{ github.workspace }}/reports ${{ github.workspace }}/ops/Report/Jmeter/
cd ${{ github.workspace }}/ops/Report/Jmeter
zip -r JMeterReport_`date +"%Y%m%d%H%M%S"` reports
rm -r reports
git config --global user.email "${{ env.committerEmail }}"
git config --global user.name "${{ env.committerName }}"
git add .
git commit -m "Jmeter Report"
git push
