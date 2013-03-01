#!/bin/sh

cd /opt/bricscad
export LD_LIBRARY_PATH=$PWD:$LD_LIBRARY_PATH
export PATH=$PWD:$PATH
exec ./bricscad "$@"
