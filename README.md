The following instructions will allow you to install all the docker components.

The first thing needed is to download [Docker](https://docs.docker.com/get-docker/) and see [Post-installation steps for linux](https://docs.docker.com/engine/install/linux-postinstall/) to make sure that Docker will work properly.
Then you can clone this repository:

	git clone https://github.com/nicod-man/thesis.git

and since this repository is made up with submodules, cloning the repo will automatically downoad all the needed submodules.

To create the images:

	cd /path_to_repository/docker
	./build_facedetection.bash
	./build_fer.bash
	./build_persondetection.bash
	
Once all the images have been created, you are able to run them with:

	<inside docker folder>
	./run_fd.bash
	./run_fer.bash
	./run.pd_bash
	
Note: when running the "facial expression recognition" image, go to:

	http://localhost:5000
	
to be able to see it working. Also, make sure to have a webcam connected.
