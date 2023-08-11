# chdir into working directory
cd $JobWorkDir

# launch mpi job
mpirun $JobWorkDir/job.target
