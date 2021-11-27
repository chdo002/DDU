#!/bin/bash 

echo "联系来了-->"

check(){
    echo 'check->'
    echo "路径--"
    pwd
    echo "文件--"
    ls
    echo 'check< -'
}

BRANCH=$1
GIT_REPOSITORY=$2
VERSION=$3

echo "参数--"
echo "$0"
echo "$BRANCH"
echo "$GIT_REPOSITORY"
echo "$VERSION"

git clone $GIT_REPOSITORY

check

echo "联系来了<--"