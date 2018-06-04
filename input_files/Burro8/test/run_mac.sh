#!/bin/bash
# FDS
fds_run="$fds_dir/fds/Build/mpi_gnu_osx_64/fds_mpi_gnu_osx_64"
# mpi
mpi_run='/usr/local/Cellar/open-mpi/3.1.0/bin/mpirun'
export OMP_NUM_THREADS=2

export runDir=$fds_dir/run/Burro8/test/compile
rm -r $runDir
mkdir -p $runDir

cp Burro8_mac.fds $runDir/
cd $runDir

# limit stack and open files
ulimit -s 65532
ulimit -n 4096

$mpi_run -n 2 $fds_run Burro8_mac.fds
