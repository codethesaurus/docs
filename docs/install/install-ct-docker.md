# Running the Application with Docker

## Docker Compose

The first way to run Code Thesaurus locally is through docker-compose.

### Running with docker-compose

Run it simply executing the following command:
- You can run it with ```docker-compose up```.

There are also some useful flags you can add to the command:

- By running ```docker-compose up -d``` the application will run in "background", and you'll be able to close the console.
- By running ```docker-compose up -d --build``` you will be able to rebuild the container's image.
- By running ```docker-compose up -d --force-recreate``` you can force docker-compose to recreate your container.

## Docker Container

The second-easiest way to run Code Thesaurus locally is through a Docker container.

### Build and Run the Container

First, make sure that you have Docker installed and running on you local machine. If you don't, you can download it here: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop).

Next, you will need to build and run the app inside a container. Follow these steps:

Note: If you run any of these `docker` commands and it says you don't have permission, you will need to open a Windows
Command Prompt or PowerShell session with administrator privileges, or type `sudo` before each command for Mac or Linux.

1. Build the Docker image using the Dockerfile:

   `docker build -t ct-image .`

2. Then, run the Docker container by using the image that you've just created. If you want it to run in the background:

   ``docker run --name ct-container -dti -p 8000:8000 -v `pwd`:/code ct-image``

   If you want it to run in the foreground (and use CTRL+C to stop it):

   ``docker run --name ct-container -ti -p 8000:8000 -v `pwd`:/code ct-image``

   If you want to run the container but bring up a Bash prompt instead of automatically running the server:

   ``docker run --name ct-container -ti -p 8000:8000 -v `pwd`:/code ct-image /bin/bash``

3. You can check if the container is up and running by invoking:

   `docker container ls`

   Your container should be present on the list as `ct-container`.

4. The Django development server should now be running. You can visit [http://localhost:8000](http://localhost:8000) to use it.

5. To edit any code or language files, do it on your local machine. Your local directory is mounted to the container so all changes will automatically be available to the container.

### Running Commands on a Running Container

You can attach to the running container with:

`docker attach ct-container`

After attaching, you have to stop the development server by pressing CTRL+C.

### Commands to Run

If you run the container in the foreground with Bash, here's a couple of helpful commands:

* `python manage.py runserver` - start the local development server
* `python manage.py test` - run all unit tests

### Closing the Running Container

You can quit the running container a couple of different ways:

* `docker stop ct-container` - Cleanly stop the container
* `docker kill ct-container` - Kill the container immediately

## Install Issues?

If you have issues with trying to run Code Thesaurus, feel free to reach out to us by the methods on the docs home page.

If you spot errors and want to help correct them, you are welcome to file [issues](https://github.com/codethesaurus/docs/issues)
or [edit this page](https://github.com/codethesaurus/docs/blob/main/docs/install.md)!
