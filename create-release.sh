#!/bin/bash
type zip || ( echo "ZIP CLI not found" && exit 1 );
CREATIONTIME=`date -Idate`;
mkdir -p release;
zip -r release/flathud-blue.zip flathudblue;
zip -r release/flathud-red.zip flathudred;
zip -r release/customizations.zip Customization/*;
touch release/release.md;
echo "Released $CREATIONTIME" >> release/release.md;
