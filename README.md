# CIHP_PGN_Dockerfile
A dockerfile to build CIHP_PGN from scratch with downloading the models from google drive.
Make sure you have a version of cmake is installed. You can either run the docker commands from the makefile, or install cmake as follows (Ubuntu 22.04):
 1.  sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ jammy main'
 2.  sudo apt update &&  sudo apt install cmake
 
After you place the images in `datasets/images` folder inside docker, run cihp_pgn from inside:

    python inf_pgn.py

