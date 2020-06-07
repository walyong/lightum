#!/bin/sh

set -e

# README and INSTALL are required by automake, but may be deleted by
# clean up rules. to get automake to work, simply touch these here,
# they will be regenerated from their corresponding *.in files by
# ./configure anyway.
touch README INSTALL

# make sure m4 dir exist
mkdir -p m4

autoreconf --force --install --verbose || exit $?
