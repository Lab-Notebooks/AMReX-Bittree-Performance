## Execution Environment for Developing AMReX in Bittree Mode

For instructions on how to use the notebook pelase see the README for these repositories:
- https://github.com/Lab-Notebooks/Outflow-Forcing-BubbleML
- https://github.com/akashdhruv/Jobrunner


Overview of steps to get this lab notebook running.

- Create a new sites folder for you machine see `sites/sedona` for an example

- Run `configure`:
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
