# THESIS

<br/>

## Components needed

The only components needed are the following:

- [Docker](https://docs.docker.com/get-docker/) (see [Post-installation steps for linux](https://docs.docker.com/engine/install/linux-postinstall/) to make Docker working properly)

- [Docker-compose](https://docs.docker.com/compose/install/)

<br/>

## Environment setup

Once you have installed both components, clone this repository: 

	git clone --recurse-submodule -j8 https://github.com/nicod-man/thesis.git

Since the repository is made up with submodules, make sure to use the flag "--recurse-submodules"; the flag "-j8" is an optional performance optimization that fetches up to 8 submodules at a time in parallel.

<br/>

## Build and run

To create images and run all the containers, launch the script in the docker folder:

	cd /path_to_installed_repository
	cd /docker
	./build.bash

If you wish to not use caches when building images, the script "build.bash" can be launched with the parameter "--no-cache":

	./build.bash --no-cache
	
Once the images are built, we can start containers using the script:

	./start.bash

Docker compose will then run all the services.

<br/>

## Test 

To send an image and evaluate it, in separate terminals launch:

	echo "EVAL dataset/test/test.jpg" | netcat -w 3 localhost 9250
	echo "EVAL dataset/test/test2.jpg" | netcat -w 3 localhost 9251
	echo "EVAL dataset/test/test2.jpg" | netcat -w 3 localhost 9252

where ports allows to comunicate respectively with the Face Expression Recognition, the Face Detection and Person Detection modules.
Both Face Detection and Person Detection will display images for 6 seconds, then they will be closed.

<br/>

## Stopping containers

To stop and remove the running containers:

	./stop.bash

- Note: the images provide by the client must be accessible from the docker container running the server.
  Make sure also to share volume between the image acquisition process and the detection server.

<br/>

## Examples 

The following images are just an example of the module outputs:

<br>
<img height="850" width="700" src="https://github.com/nicod-man/thesis/blob/main/images/face_detection.jpg"/>
</br>

<br>
<img height="850" width="700" src="https://github.com/nicod-man/thesis/blob/main/images/person_detection.jpg"/>
</br>
