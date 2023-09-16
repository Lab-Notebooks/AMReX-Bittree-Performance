## Execution Environment for Developing AMReX in Bittree Mode

For instructions on how to use the notebook pelase see the README for these repositories:
- https://github.com/Lab-Notebooks/Outflow-Forcing-BubbleML
- https://github.com/akashdhruv/Jobrunner

Data repository is located here:
- https://anl.box.com/s/rixy0lkj1dam6k6o287mk04j93kookf8

Overview of steps to get this lab notebook running.

1. Install Jobrunner, `pip install pyjobrunner==2023.8 --user`, make sure `~/.local/bin` is in your path.
   
2. Create a new sites folder for you machine see `sites/<site-name>`
 
3. Copy `sites/sedona/environment.sh` and `sites/sedona/Makefile.h` to `sites/<site-name>`.

4. Edit `sites/<site-name>/environment.sh` to set `MPI_HOME` and `HDF5_HOME`. 
   If HDF5 is not installed on your machine do step 7. 

5. Run `configure`:
  ```
  ./configure -s <site-name>
  ```
  This will create `config.sh`


6. Setup software stack:
  ```
  jobrunner setup software/bittree
  jobrunner setup software/amrex
  jobrunner setup software/flashx
  jobrunner setup software/flashkit
  ```

7. If HDF5 is not available on your local machine do:
  ```
  jobrunner setup  software/hdf5
  ```
   
8. Setup a test simulation:
  ```
  jobrunner setup simulation/DeformingBubble/Bittree2D/amrexBittree
  ```

9. Run the simulation
  ```
  jobrunner submit simulation/DeformingBubble/Bittree2D/amrexBittree
  ```
  Console output can be viewed in file `simulation/DeformingBubble/Bittree2D/amrexBittree/job.output`

10. Postprocessing:
   ```
   cd simulation/DeformingBubble/Bittree2D/amrexBittree
   flashkit create xdmf --auto
   ```    
   This will create `INS_Deforming_Bubble.xmf` that can be opened in paraview.
