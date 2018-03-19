#!/bin/bash

# todo: add usage

CANDIDATE="${1}"

MERGE_TARGET="${2}"
MERGE_TARGET="${MERGE_TARGET:-develop}"

REVIEW="${3}"
REVIEW="${REVIEW:-review}"

echo "CANDIDATE=${CANDIDATE}"
echo "MERGE_TARGET=${MERGE_TARGET}"
echo "REVIEW=${REVIEW}"


git checkout ${CANDIDATE}
git pull

git checkout ${MERGE_TARGET}
git pull
git checkout -b ${REVIEW}

git merge --squash ${CANDIDATE}
