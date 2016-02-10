#!/bin/sh

COLL=learn

prog=`basename $0`

usage() {
  echo "usage: $prog <SSS>"
}

if [ $# -ne 1 ]; then
  usage
  exit 1
fi
sss=$1

bin/post -c $COLL - <<HERE
<add>
<doc>
<field name="id">id${sss}</field>
<field name="timestamp${sss}">2014-06-14T11:24:54.${sss}Z</field>
</doc>
</add>
HERE
