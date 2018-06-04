#!/bin/bash
# mpirun
mpi_run='/usr/local/Cellar/open-mpi/3.1.0/bin/mpirun'
# FDS
fds_run='$fds_dir/fds/Build/mpi_gnu_osx_64/fds_mpi_gnu_osx_64'
# unlimit stack for OSX
ulimit -s 65532

export runDir=$fds_dir/run/Burro8/test
mkdir -p $runDir

cp Burro8.fds $runDir/
cd $runDir
$mpi_run -n 2 $fds_run Burro8.fds
