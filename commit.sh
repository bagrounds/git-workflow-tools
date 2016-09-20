#!/bin/sh

for s in MAJOR MINOR PATCH
do
  if [ "$1" = $s ]
  then
    SEVERITY=[$s]
  fi
done

if [ "$SEVERITY" = "" ]
then
  echo "invalid severity: $1"
  exit 1
fi

for e in ADD CHANGE DEPRECATE REMOVE FIX SECURITY
do
  if [ "$2" = $e ]
  then
    EFFECT=[$e]
  fi
done

if [ "$EFFECT" = "" ]
then
  echo "invalid effect: $2"
  exit 1
fi

MESSAGE=$3

if [ "$MESSAGE" = "" ]
then
  echo "a commit message is required"
  exit 1
fi

git commit -m "$SEVERITY$EFFECT $MESSAGE"

exit 0

