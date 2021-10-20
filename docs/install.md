# Installation

Here's some various ways to can run the project yourself!

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

One of the easiest ways to run Code Thesaurus locally is through a Docker container. 

### Build and Run the Container

First, make sure that you have Docker installed and running on you local machine. If you don't, you can download it here: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop).

Next, you will need to build and run the app inside a container. Follow these steps:

Note: If you run any of these `docker` commands and it says you don't have permission, you will need to open a Windows 
Command Prompt or PowerShell session with administrator privledges, or type `sudo` before each command for Mac or Linux.

1. Build the Docker image using the Dockerfile: 
   
    `docker build -t ct-image .`

1. Then, run the Docker container by using the image that you've just created. If you want it to run in the background:
   
    ``docker run --name ct-container -dti -p 8000:8000 -v `pwd`:/code ct-image``

    If you want it to run in the foreground (and use CTRL+C to stop it):

    ``docker run --name ct-container -ti -p 8000:8000 -v `pwd`:/code ct-image``

    If you want to run the container but bring up a Bash prompt instead of automatically running the server:
 
    ``docker run --name ct-container -ti -p 8000:8000 -v `pwd`:/code ct-image /bin/bash``

1. You can check if the container is up and running by invoking: 
   
    `docker container ls`
   
    Your container should be present on the list as `ct-container`.
   
1. The Django development server should now be running. You can visit [http://localhost:8000](http://localhost:8000) to use it.

1. To edit any code or language files, do it on your local machine. Your local directory is mounted to the container so all changes will automatically be available to the container.

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


## Manual Install

Code Thesaurus is tested to run on at least Python 3.8, though it may work in earlier 3.x versions. It will not run in 
Python 2.x.

If you run `python --version` and it shows Python 2.x but you know you have Python 3.x installed, you may need to 
suffix all `python` and `pip` commands with `3`, e.g. `pip3` and `python3`, or follow the process for making Python
3 your default Python installation.

### Manual Install - Windows

1. Clone the project with `git clone https://github.com/codethesaurus/codethesaur.us.git`
1. Switch into to the directory with `cd codethesaur.us`
1. Check to see if Python 3.x is installed with `python --version` or `python3 --version`. If Python 3.x isn't 
   installed, visit [https://www.python.org/downloads/windows/](https://www.python.org/downloads/windows/) or if you 
   have Chocolatey, install it with `choco install python`
1. Install Python's virtual environment venv with the command `pip3 install virtualenv`
1. To set up new virtual environment, run `virtualenv venv`
1. To activate virtual environment, run `venv\Scripts\activate.bat`
1. Run `pip install -r requirements.txt` to install all the needed dependencies
1. Then run `python manage.py runserver` to start the server
1. In your browser, visit [http://localhost:8000/](http://localhost:8000/) or [http://127.0.0.1:8000/](http://127.0.0.1:8000/) 
1. Press CTRL+C in the terminal to stop the server
1. To deactivate the virtual environment, run `venv\Scripts\deactivate.bat`

### Manual Install - Mac

Note: These instructions only work on Intel-based Macs. For the new M1 Macs, the basic install process is about the 
same, but you may need to review directions on Homebrew's website to see how to properly install Python. We hope to 
update these directions soon.

1. Check to see if Python 3.x is installed with `python --version` or `python3 --version`. If Python 3.x isn't 
   installed, install it with `brew install python`
1. Clone the project with `git clone https://github.com/codethesaurus/codethesaur.us.git`
1. Switch into to directory with `cd codethesaur.us`
1. Run `pip3 install virtualenv`
1. To set up new virtual environment, run `virtualenv venv`
1. To activate virtual environment, run `source venv/bin/activate`
1. Run `pip3 install -r requirements.txt` to install all the needed dependencies
1. Then run `python3 manage.py runserver` to start the server
1. In your browser, visit [http://localhost:8000/](http://localhost:8000/) or [http://127.0.0.1:8000/](http://127.0.0.1:8000/)
1. Press CTRL+C in the terminal to stop the server
1. To deactivate the virtual environment, run `deactivate`

### Manual Install - Linux

Note: Instructions will often vary greatly depending on what distribution of Linux you are running. For more info, please 
search online for instructions on using your distribution's package manager.

1. Check to see if the system default `python --version` works. If the returned text is not python 3.x then try using 
   `python3 --version`. If both `python` and `python3` are installed, use whichever is the latest version.
1. You may need to install PostgreSQL as well. Use your package manager (often `apt`, `apt-get`, or `pacman`) to install 
   the `postgresql` package.
1. Install venv for virtual environment with `sudo apt install -y python3-venv`
1. Clone the project with `git clone https://github.com/codethesaurus/codethesaur.us.git`
1. Switch into to directory with `cd codethesaur.us`
1. Set up the Python virtual environment with `python3 -m venv venv`
1. Activate the virtual environment with `source venv/bin/activate`
1. Install the dependencies with `pip install -r requirements.txt`
1. Then run the app with `python3 manage.py runserver`
1. In your browser, visit [http://localhost:8000/](http://localhost:8000/) or [http://127.0.0.1:8000/](http://127.0.0.1:8000/)
1. Press CTRL+C in the terminal to stop the server
1. To deactivate the virtual environment, run `deactivate`

## Install Issues?

If you have issues with trying to run Code Thesaurus, feel free to reach out to us by the methods on the docs home page. 

If you spot errors and want to help correct them, you are welcome to file [issues](https://github.com/codethesaurus/docs/issues) 
or [edit this page](https://github.com/codethesaurus/docs/blob/main/docs/install.md)!
