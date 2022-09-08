#!/bin/bash
major=$(git tag | awk -F \. {'print $1'})
minor=$(git tag | awk -F \. {'print $2'})
patch=$(git tag | awk -F \. {'print $3'})

echo $major
echo $minor
echo $patch
