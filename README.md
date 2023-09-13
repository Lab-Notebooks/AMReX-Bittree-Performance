## Execution Environment for Developing AMReX in Bittree Mode

For instructions on how to use the notebook pelase see the README for these repositories:
- https://github.com/Lab-Notebooks/Outflow-Forcing-BubbleML
- https://github.com/akashdhruv/Jobrunner


Overview of steps to get this lab notebook running.

1. Install Jobrunner, `pip install pyjobrunner==2023.08 --user`, make sure `~/.local/bin` is in your path.
   
2. Create a new sites folder for you machine see `sites/<site-name>`
 
3. Copy `sites/sedona/environment.sh` and `sites/sedona/Makefile.h` to `sites/<site-name>`.

4. Edit `sites/<site-name>/environment.sh` to set your MPI and HDF5 path.

5. Run `configure`:
  ```
  ./configure -s <site-name>
  ```

- Setup software stack:
  ```
  jobrunner setup software/bittree
  jobrunner setup software/amrex
  jobrunner setup software/flashx
  ```

- Setup a test simulation:
  ```
  jobrunner setup simulation/DeformingBubble/Bittree2D/amrexBittree
  ```

- Run the simulation
  ```
  jobrunner submit simulation/DeformingBubble/Bittree2D/amrexBittree
  ```
