[![CircleCI](https://dl.circleci.com/status-badge/img/gh/dantediy/project-microservices/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/dantediy/project-microservices/tree/main)

# Project Summary

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask `app—in` a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Project Tasks
Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

## Instructions
1. Create and active virtual environment with name, in this exercise `.devops` will be used for the virtual environment
```
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```

2. Install dependencies via Makefile which are listed in `requirements.txt`
```
make install
```

3. Running `app.py` using python, docker, kubernetes
```
python app.py
```

```
source ./run_docker.sh
# or ./run_docker.sh
```

```
source ./run_kubernetes.sh
# or ./run_kubernetes.sh
```

## File structure
```
├── .circleci           CircleCI folder
├── model_data          model_data folder
├── output_txt_files    output files folder
├── app.py              Flask code.
├── Dockerfile          Dockerfile
├── make_prediction.sh  predict housing price
├── Makefile            Run command using make cli.
├── README.md           README 
├── requirements.txt    dependencies
├── run_docker.sh       Run Flask code using Docker
├── run_kubernetes.sh   Run Flask code using Kubernetes Cluster
└── upload_docker.sh    Upload the buill image to docker hub
```