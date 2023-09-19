# cache the value of current directory
NodeDir=$(realpath .)

# setup Flash-X
cd $FLASHX_HOME && git checkout $FlashSha && ./setup $FlashOptions -objdir=object_pm

# compile the simulation and copy files
cd $FLASHX_HOME/object_pm && make -j && cp flashx $NodeDir/
