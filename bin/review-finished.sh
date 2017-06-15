#!/bin/bash

fail () {

	echo "FAILED: ${1}"
	exit 1
}

CANDIDATE=$1
MERGE_TARGET=develop
REVIEW=review

echo "MERGE_TARGET=${MERGE_TARGET}"
echo "REVIEW=${REVIEW}"

git checkout ${REVIEW} || fail "no review branch"

# When I propose changes, I generally write them up inside the temp review branch
# before adding to a review comment.
# This reset gets rid of those edits before we discard the review branch and go back to develop.
git reset --hard

git checkout ${MERGE_TARGET}

git branch -D ${REVIEW}


