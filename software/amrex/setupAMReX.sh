# Bash script for `jobrunner` to install AMReX

# Setup AMReX
if [ ! -d "AMReX" ]; then
	git clone git@github.com:Box-Tools/amrex.git --branch main AMReX && cd AMReX

	# checkout desired sha-1
	git checkout 8e3cb7315
else
	cd AMReX
fi

# configure and install amrex in 2D
make clean
BITTREE_HOME=$BITTREE_2D_HOME
./configure --dim=2 --prefix=$AMREX2D_HOME --enable-bittree=yes --enable-tiny-profile=yes --debug=no
make -j
make install

# configure and install amrex in 3D
make clean
BITTREE_HOME=$BITTREE_3D_HOME
./configure --dim=3 --prefix=$AMREX3D_HOME --enable-bittree=yes --enable-tiny-profile=yes --debug=no
make -j
make install
