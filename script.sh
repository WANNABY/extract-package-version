#!/bin/bash

echo "Trying to read ${PATH_INPUT}/package.json"
PACKAGE_VERSION=$(cat ${PATH_INPUT}/package.json | jq '.version' | tr -d '"')

echo "Found version: ${PATH_INPUT}"

echo "package-version=${PATH_INPUT}" >> $GITHUB_OUTPUT
