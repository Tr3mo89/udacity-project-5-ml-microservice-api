[![CircleCI](https://circleci.com/gh/Tr3mo89/udacity-project-5-ml-microservice-api.svg?style=svg&circle-token=b1c039fb5762076e7d50429ddd7d2cea060542a6)](<https://app.circleci.com/pipelines/github/Tr3mo89/udacity-project-5-ml-microservice-api>)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Running test

* Test the Dockerfile: `hadolint Dockerfile `
* Lint test: `make lint`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

---

## File Overview

### Dockerfile
* Specific python Image
* Workdir is /app
* Update pip and install requirements
* Expose port 80
* Run `app.py` with python

### Requirements
* contains the requirements for the Dockerfile / Image

### Run Docker
1. Builds the docker image based on the dockerfile and tags it
2. List all docker images
3. Run the flask app in a docker container

### Upload Docker
1. Sets the dockerpath
2. Login to docker hub and tag the docker image
3. Push the image to the docker hub repository


### Run Kubernetes
1. Set the dockerpath to fetch the image
2. run the flask app on kubernetes based on the fetched image and set the port
3. List all running pods
4. Start the port forwarding for the flask app
