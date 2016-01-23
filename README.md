#Basic Tensorflow using Docker

This is a barebones project using tensorflow in Docker. If you want to start messing around with tensorflow on a Windows computer this is the quickest way I've found.

Once you get it running you can start expanding your project easily.

##Getting started

1. Install Docker. [[Link for Windows]](https://docs.docker.com/engine/installation/windows/)

2. clone this repo or dowload as a zip.

3. Open Docker Quickstart Terminal

4. Navigate to the project folder 

    cd {your folder path}

5. Build the docker image

    docker build -t tensorflow-docker-basic .

6. Run the docker image

    docker run -it tensorflow-docker-basic

7. Run the example python script

    python run.py
