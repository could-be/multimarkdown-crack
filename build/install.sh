#!/bin/bash

cp ~/Library/Application\ Support/GoLand2019.3/idea-multimarkdown/lib/idea-multimarkdown.jar ./
unzip idea-multimarkdown.jar -d tmp

cp out/production/multimarkdown/com/vladsch/idea/multimarkdown/license/LicenseAgent.class tmp/com/vladsch/idea/multimarkdown/license/
cp src/com/vladsch/idea/multimarkdown/license/LicenseAgent.java tmp/com/vladsch/idea/multimarkdown/license

cd tmp
jar cvf idea-multimarkdown.jar *
echo "replace idea-multimarkdown.jar"
cp idea-multimarkdown.jar ~/Library/Application\ Support/GoLand2019.3/idea-multimarkdown/lib/

# 备份最新破解jar 包
echo "bck idea-multimarkdown.jar"
cp idea-multimarkdown.jar ../bck

