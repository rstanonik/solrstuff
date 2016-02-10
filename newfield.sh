#!/bin/sh

COLL=learn

prog=`basename $0`

usage() {
  echo "usage: $prog <id>"
}

if [ $# -ne 1 ]; then
  usage
  exit 1
fi
id=$1

bin/post -c $COLL - <<HERE
<add>
<doc>
<field name="id">id${id}</field>
<field name="field${id}">value${id}</field>
</doc>
</add>
HERE
