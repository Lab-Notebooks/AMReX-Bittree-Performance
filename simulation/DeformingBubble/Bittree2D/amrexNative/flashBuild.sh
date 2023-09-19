# cache the value of current directory
NodeDir=$(realpath .)

# setup Flash-X
cd $FLASHX_HOME && git checkout $FlashSha && ./setup $FlashOptions -objdir=object_am

# compile the simulation and copy files
cd $FLASHX_HOME/object_am && make -j && cp flashx $NodeDir/

# chdir into node directory and do clean up
# cd $NodeDir && rm -rf $FLASHX_HOME/object
