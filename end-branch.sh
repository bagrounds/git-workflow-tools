#!/bin/sh

CURRENT_BRANCH=$(git branch | sed -nE 's/^\* ([^ ]+)$/\1/p')

npm t

git push -u origin $CURRENT_BRANCH

exit 0

