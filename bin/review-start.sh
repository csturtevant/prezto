#!/bin/bash

CANDIDATE=$1

MERGE_TARGET=develop

REVIEW=review

echo "CANDIDATE=${CANDIDATE}"
echo "MERGE_TARGET=${MERGE_TARGET}"
echo "REVIEW=${REVIEW}"

git checkout ${MERGE_TARGET}
git pull

git checkout ${CANDIDATE}
git pull

git checkout ${MERGE_TARGET}
git checkout -b ${REVIEW}

git merge --squash ${CANDIDATE}

