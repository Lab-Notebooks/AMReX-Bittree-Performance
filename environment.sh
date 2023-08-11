# Bash file to load modules and set environment
# variables for compilers and external libraries

# Set project home using realpath
# of current directory
export PROJECT_HOME=$(realpath .)

# Set SiteHome to realpath of SiteName
SiteHome="$PROJECT_HOME/sites/$SiteName"

# Load modules from the site directory
source $SiteHome/environment.sh

# Store path to bittree
export BITTREE_2D_HOME="$PROJECT_HOME/software/bittree/Bittree/install-$SiteName/2D"
export BITTREE_3D_HOME="$PROJECT_HOME/software/bittree/Bittree/install-$SiteName/3D"

# Store path to amrex as environment variable
export AMREX2D_HOME="$PROJECT_HOME/software/amrex/AMReX/install-$SiteName/2D"
export AMREX3D_HOME="$PROJECT_HOME/software/amrex/AMReX/install-$SiteName/3D"

# Path to Flash-X
export FLASHX_HOME="$PROJECT_HOME/software/flashx/Flash-X"

# Output information to stdout
echo "---------------------------------------------------------------------------------------"
echo "Execution Environment:"
echo "---------------------------------------------------------------------------------------"
echo "PROJECT_HOME=$PROJECT_HOME"
echo "SITE_HOME=$SiteHome"
echo "MPI_HOME=$MPI_HOME"
echo "HDF5_HOME=$HDF5_HOME"
echo "FLASHX_HOME=$FLASHX_HOME"
echo "AMREX2D_HOME=$AMREX2D_HOME"
echo "AMREX3D_HOME=$AMREX3D_HOME"
echo "BITTREE_2D_HOME=$BITTREE_2D_HOME"
echo "BITTREE_3D_HOME=$BITTREE_3D_HOME"
echo "---------------------------------------------------------------------------------------"
