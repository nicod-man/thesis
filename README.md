# Thesis

The only components needed are the following:

- [Docker](https://docs.docker.com/get-docker/) (see [Post-installation steps for linux](https://docs.docker.com/engine/install/linux-postinstall/) to make sure that Docker will work properly.

- [Docker-compose](https://docs.docker.com/compose/install/)

Once you have installed it, clone this repository:

	git clone https://github.com/nicod-man/thesis.git

The repository is made up with submodules, therefore cloning it will download all the needed submodules.

To create images and run all the containers, launch the script:

	./start.bash
	
It will automatically pull the images and start the containers in server-client modality.	
	
To send an image and evaluate it, in a new terminal:

	echo "EVAL dataset/test/test.jpg" | netcat -w 3 localhost 9250
	echo "EVAL dataset/test/test2.jpg" | netcat -w 3 localhost 9251
	
To stop and remove the running container:

	./stop.bash

- Note: the images provide by the client must be accessible from the docker container running the server.
  Make sure also to share volume between the image acquisition process and the detection server.
