# chdir into working directory
cd $JobWorkDir

# launch mpi job
mpirun -n 10 $JobWorkDir/job.target
