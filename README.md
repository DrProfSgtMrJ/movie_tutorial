# MoviePy tutorial

This projects is a basic python poetry project intended to help those get started. 

## Prerequisites
- Docker (https://www.docker.com/)

#### For Windows Users
- MobaXterm (https://mobaxterm.mobatek.net/)

## Set Up
- Make sure you are in the movie_tutorial directory (`cd /movie_tutorial`)
- `docker build .`
- Get the image name (can be found using `docker image ls` and getting the latest built)

#### For Windows Users
- Docker doesn't have a gui, thus we must port the x11 server to the host machine. 
- This is where MobaXTerm comes in.
- Make sure MobaXTerm has started and the XServer is running (top right corner)
- Run: `docker run -it --rm -e DISPLAY=<IP SAID ON XSERVER> --net=host <IMAGE NAME> bash`


