#!/bin/bash
type zip || { echo "ZIP CLI not found"; exit 1 }
CREATIONTIME=`date -Idate`
mkdir -p release
zip release/flathud-blue.zip flathudblue
zip release/flathud-red.zip flathudred
zip release/customizations.zip Customization/*
touch release/release.md
echo "Released $CREATIONTIME" >> release/release.md

exit 0
