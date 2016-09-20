#!/bin/sh

git branch | sed -nE 's/^\* ([^ ]+)$/\1/p'

exit 0

