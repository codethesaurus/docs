# Installing Documentation with Docker

### Overview
This file includes the instructions to create a Container using the Dockerfile, as to locally run the documentation site for testing and editing.
I also do persume you have cloned the repository and have Docker Engine set up. If you don't have Docker Engine it set up, you can learn how to do so here: [https://docs.docker.com/engine/](https://docs.docker.com/engine/).


Now that you are all set with your docker software we can begin, setting up our container.


### Build and Run the Container

You will need to build and run the app inside a container. Follow these steps:

Note: If you run any of these `docker` commands and it says you don't have permission, you will need to open a Windows
Command Prompt or PowerShell session with administrator privledges, or type `sudo` before each command for Mac or Linux.

1. Build the Docker image using the Dockerfile:

    ```
    docker build -t ct-docs-image .
    ```


1. Then, run the Docker container by using the image that you've just created. If you want it to run in the background:

    ```
    docker run --name ct-docs-container -dti -p 8000:8000 -v `pwd`:/code ct-docs-image
    ```
   If you want it to run in the foreground (and use CTRL+C to stop it):
    ```
    docker run --name ct-docs-container -ti -p 8000:8000 -v `pwd`:/code ct-docs-image
    ```
   If you want to run the container but bring up a Bash prompt instead of automatically running the server:
    ```
    docker run --name ct-docs-container -ti -p 8000:8000 -v `pwd`:/code ct-docs-image /bin/bash
    ```
1. You can check if the container is up and running by invoking:
   ```
    docker container ls
   ```
   Your container should be present on the list as `ct-docs-container`.

1. The Documentaion site should now be running. You can visit [http://localhost:8000](http://localhost:8000) to use it.

1. To edit any code or language files, do it on your local machine. Your local directory is mounted to the container so all changes will automatically be available to the container.



### NOTE :
* f you already have the Codethesaurus Server Running (the main website not the documentaion site)  please do cleanly close it using the command
    ```
  docker stop ct-container
  ``` 
  and then run the code-docs-container as shown above.

* An alternative, if you want to have both site running you can allocate this site a different port by changing the `-p  8000:8000` tag in the above commands to a `-p 8090:8000` tag and you can access the Documentaion site at [http://localhost:8090](http://localhost:8090)

  For example:
  ```
  docker run --name ct-docs-container -dti -p 8090:8000 -v `pwd`:/code ct-docs-image
  ```
  to run docker container in the background


### Running Commands on a Running Container

You can attach to the running container with:
```
docker attach ct-docs-container
```    
After attaching, you have to stop the documentaion development server by pressing CTRL+C.

### Commands to Run

If you run the container in the foreground with Bash, here's a couple of helpful commands:

* start the local documentation development server
```
mkdocs serve -a 0.0.0.0:8000
```

### Closing the Running Container

You can quit the running container a couple of different ways:

*  Cleanly stop the container
```
docker stop ct-docs-container
```
* Kill the container immediately
```
docker kill ct-docs-container
```
