#!/bin/sh

set -e

touch NEWS README AUTHORS ChangeLog COPYING
rm -f ext.mk

cat > ext.mk <<EOF
BASE_SRC = `make -f variable.mk print-baseobj`
BIN_SRC  = `make -f variable.mk print-binobj`
LIB_SRC  = `make -f variable.mk print-libobj`
EOF

autoreconf -if
