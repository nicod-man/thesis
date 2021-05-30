# Thesis

The following instructions will allow you to install all the docker components.

First, download [Docker](https://docs.docker.com/get-docker/) and see [Post-installation steps for linux](https://docs.docker.com/engine/install/linux-postinstall/) to make sure that Docker will work properly.

Then clone this repository:

	git clone https://github.com/nicod-man/thesis.git

and since it is made up with submodules, cloning the repo will automatically downoad all the needed submodules.

To create the images:

	cd /path_to_repository/docker
	./build_facedetection.bash
	./build_fer.bash
	./build_persondetection.bash
	
To run the images:

	<inside docker folder>
	./run_fd.bash
	./run_fer.bash
	./run.pd_bash
	
Both the Face Detection and FacialExpressionRecognition modules will start automatically in server-client modality.
To send an image and evaluate it, in a new terminal:

	echo "EVAL dataset/test/test.jpg" | netcat -w 3 localhost 9250
	echo "EVAL dataset/test/test2.jpg" | netcat -w 3 localhost 9251

- Note: the image must be accessible from the docker container running the server.
  Make sure also to share volume between the image acquisition process and the detection server.
