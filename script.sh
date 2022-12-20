#!/bin/bash

echo "Trying to read ${PATH_INPUT}/package.json"
PACKAGE_VERSION=$(cat ${PATH_INPUT}/package.json | jq '.version' | tr -d '"')

echo "Found version: ${PACKAGE_VERSION}"

echo "EXTRACTED_PACKAGE_VERSION=${PACKAGE_VERSION}" >> $GITHUB_ENV
echo "package-version=${PACKAGE_VERSION}" >> $GITHUB_OUTPUT
