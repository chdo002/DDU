#!/bin/bash 

echo "联系来了-->"


BRANCH=$1
GIT_REPOSITORY=$2
VERSION=$3

echo "参数--"
echo "$0"
echo "$BRANCH"
echo "$GIT_REPOSITORY"
echo "$VERSION"

echo "路径--"
pwd
ls

git clone GIT_REPOSITORY

echo "联系来了<--"