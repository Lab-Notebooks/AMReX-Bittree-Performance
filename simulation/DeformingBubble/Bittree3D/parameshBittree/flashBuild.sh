# cache the value of current directory
NodeDir=$(realpath .)

# setup Flash-X
cd $FLASHX_HOME && git checkout amrex-bittree-updates && ./setup $FlashOptions

# compile the simulation and copy files
cd $FLASHX_HOME/object && make -j && cp flashx $NodeDir/

# chdir into node directory and do clean up
cd $NodeDir && rm -rf $FLASHX_HOME/object
