[![CircleCI](https://circleci.com/gh/kmichal/ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/kmichal/ml-microservice-kubernetes)

## Project Overview

This project containerizes a pre-trained sklearn model (`model_data/boston_housing_prediction.joblib`) that has been trained to predict housing prices in Boston.


## Setup the Environment

* Create a virtualenv and activate it `make setup`
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


### Calling the service

A sample call can be found in `make_predictions.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl


### Custom Docker Image repos

To push locally build docker image to your repo edit and then run `upload_docker.sh`