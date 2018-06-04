#!/bin/bash
# FDS
source $HOME/FDS/FDS6/bin/FDS6VARS.sh
# unlimit stack for OSX
ulimit -s 65532

export runDir=$fds_dir/run/Burro8/test/pre
rm -r $runDir
mkdir -p $runDir

cp Burro8.fds $runDir/
cd $runDir
fds Burro8.fds
