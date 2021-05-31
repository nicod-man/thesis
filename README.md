# Thesis

The only components needed are the following:

- [Docker](https://docs.docker.com/get-docker/) (see [Post-installation steps for linux](https://docs.docker.com/engine/install/linux-postinstall/) to make Docker working properly).

- [Docker-compose](https://docs.docker.com/compose/install/)

Once you have installed it, clone this repository: 

	git clone --recurse-submodule -j8 https://github.com/nicod-man/thesis.git

Since the repository is made up with submodules, make sure to use the flag "--recurse-submodules"; the flag "-j8" is an optional performance optimization that fetches up to 8 submodules at a time in parallel.


To create images and run all the containers, launch the script in the docker folder:

	cd /path_to_docker_folder
	./start.bash
	
It will automatically pull the images and start the containers in server-client modality.	
	
To send an image and evaluate it, in separate terminals launch:

	echo "EVAL dataset/test/test.jpg" | netcat -w 3 localhost 9250
	echo "EVAL dataset/test/test2.jpg" | netcat -w 3 localhost 9251

where port 9250 and port 9251 allows to comunicate respectively with the Face Expression Recognition module and the Face Detection.
	
To stop and remove the running container:

	./stop.bash

- Note: the images provide by the client must be accessible from the docker container running the server.
  Make sure also to share volume between the image acquisition process and the detection server.
