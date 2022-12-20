#!/bin/bash

echo "Trying to read ${INPUT_PATH}/package.json"
PACKAGE_VERSION=$(cat ${INPUT_PATH}/package.json | jq '.version' | tr -d '"')

echo "Found version: ${INPUT_PATH}"

echo "package-version=${INPUT_PATH}" >> $GITHUB_OUTPUT
