#!/bin/bash
# Inspired by
# https://github.com/fmahnke/shell-semver/blob/master/increment_version.sh

if [ ! -f package.json ];
then
   echo "File package.json does not exist."
   exit 0
fi


version=$(cat package.json | json version)

# Build array from version string.

a=( ${version//./ } )
((a[2]++))
version="${a[0]}.${a[1]}.${a[2]}"

echo $version

# echo $version
git flow release start $version
npm version patch --no-git-tag-version
git commit -am "release(${version}): bump version"
git flow release finish "${version}"

