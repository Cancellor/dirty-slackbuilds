#!/bin/sh

cd /opt/bricscad
export LD_LIBRARY_PATH=$PWD
exec ./bricscad "$@"
