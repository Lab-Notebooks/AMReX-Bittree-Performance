# chdir into working directory
cd $JobWorkDir

# launch mpi job
mpirun -n 5 $JobWorkDir/job.target
