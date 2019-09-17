#!/bin/sh -l
set -eu

# Install all the requirements
if [ -f $2 ] ; then
	# If file specified, try getting requirements.txt from its directory
	findfrom=`dirname $2`
else
	# Otherwise install from all requirements.txt in target path
	findfrom=$2
fi
find $findfrom -name requirements.txt -exec bash -c 'pip install -r {}' \;

sh -c "/usr/bin/snyk $*"
