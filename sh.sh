#!/bin/bash
major=$(git tag | tail -1 | awk -F \. {'print $1'})
minor=$(git tag | tail -1 | awk -F \. {'print $2'})
patch=$(git tag | tail -1 | awk -F \. {'print $3'})

echo $major
echo $minor
echo $patch
