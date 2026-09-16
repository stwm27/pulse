# DevOps CI/CD Pet Project

Simple Python web application demonstrating a basic CI/CD workflow with Docker and GitLab CI.

## About

This is a small DevOps pet project built around a simple Flask application.  
The main goal of the project is to practice containerization, automated testing and CI workflows.

The application exposes a basic HTTP endpoint and a health check endpoint. Tests are written with pytest, the application is packaged into a Docker image, and GitLab CI automatically runs tests and builds the image on every push.

**Tech stack:** Python 3.11, Flask, Pytest, Docker, Bash, GitLab CI.

## Features

- [x] Simple Flask web application
- [x] Health check endpoint
- [x] Automated tests with pytest
- [x] Docker containerization
- [x] Bash script for test automation
- [x] GitLab CI pipeline
- [x] Docker image publishing to GitLab Container Registry


## CI Pipeline

```text
Git Push -> Run Tests -> Build Docker Image -> Push Image to GitLab Container Registry
```



## Run Locally

Install dependencies:

```bash
pip install -r requirements.txt
```

Run the application:

```bash
python app/app.py
```

The application will be available at:

```text
http://localhost:5000
```

Health check:

```text
http://localhost:5000/health
```



## Run Tests

Run tests directly:

```bash
python -m pytest
```

Or use the Bash script:

```bash
sh scripts/run_tests.sh
```

## Docker

Build the Docker image:

```bash
docker build -t devops-prac .
```

Run the container:

```bash
docker run -p 5000:5000 devops-prac
```

Then open:

```text
http://localhost:5000
```

## GitLab CI

The pipeline automatically:

1. Installs project dependencies
2. Runs automated tests
3. Builds a Docker image
4. Tags the image with the commit SHA
5. Pushes the image to GitLab Container Registry
6. Publishes the `latest` tag for the main branch