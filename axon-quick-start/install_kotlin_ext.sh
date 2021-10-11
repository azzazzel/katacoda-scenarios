#!/bin/bash

cd /tmp && apt-get update -y && apt install libarchive-tools -y # install bsdtar

curl -L https://marketplace.visualstudio.com/_apis/public/gallery/publishers/fwcd/vsextensions/kotlin/0.2.22/vspackage | bsdtar -xvf - extension

mv extension /opt/.katacodacode/extensions/fwcd.kotlin-0.2.22
