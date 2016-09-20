#!/bin/sh

git log --format="%s" | sed -nE 's/^(\[[a-zA-Z ]+ *])*.*$/\1/p'

exit 0

