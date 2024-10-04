
# Simple Web Application

This is a simple web application using [Python Flask](http://flask.pocoo.org/) and [MySQL](https://www.mysql.com/) database. This project is a fork of the original [simple-webapp-flask repository](https://github.com/mmumshad/simple-webapp-flask), created by [mmumshad](https://github.com/mmumshad). This application is used in the demonstration of the development of Ansible Playbooks. 
It implements a Flask web API that serves as a backend for web applications, providing various endpoints for CRUD operations, enabling developers to easily integrate and utilize its functionalities.
The specific case here is to deploy and secure an api application, using a CI/CD pipeline.

Below are the steps required to get this working on macOS.

- **Install all required dependencies**
- **Install and Configure Web Server**
- **Start Web Server**

## 1. Install all required dependencies

Install Homebrew if you haven't already:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install Python and its dependencies:
```bash
brew install python@3.12.6
```

## 2. Install and Configure Web Server

Install Python Flask dependency:
```bash
pip3 install flask
```

- Copy `app.py` or download it from the original repository.
- Configure database credentials and parameters.

## Project Summary

### API Functionality
- **User Authentication**: Securely authenticate users with JWT tokens.
- **Data Management**: Perform create, read, update, and delete operations on resources.
- **Response Format**: All API responses are returned in JSON format for ease of integration.

### Containerization
The API is containerized using Docker, which allows for easy deployment and scalability. The Dockerfile includes:
- Base image: Python
- Dependencies installation: Using `requirements.txt`
- Command to run the Flask application.

### CI/CD Process
The CI/CD pipeline automates the process of building and deploying the API. It consists of:
1. **Continuous Integration**:
   - The code is checked out from the repository.
   - Docker Buildx is set up for multi-platform builds.
   - The Docker image is built and pushed to Docker Hub.
   - A security scan using Trivy is performed to check for vulnerabilities.

2. **Continuous Deployment**:
   - The Docker image is deployed to a Kubernetes cluster for production use.
  
### CI/CD Pipeline Steps
The CI/CD pipeline is defined in the GitHub Actions workflow file and includes the following steps:

- Trigger: On push or pull request events to the main branch.
- Checkout Code: Use the actions/checkout action to pull the latest code from the repository.
- Set Up Docker Buildx: Configure Buildx for building multi-platform Docker images.
- Build Docker Image: Build the Docker image and tag it with the commit SHA.
- Push Docker Image: Push the built Docker image to Docker Hub.
- Run Security Scan: Use Trivy to scan the Docker image for vulnerabilities.
- Deploy to Kubernetes: Apply the Kubernetes manifests to deploy the application.

### Deployment on Kubernetes
The API is deployed on a Kubernetes cluster using the following resources:
- **Deployment**: Manages the deployment of the application.
- **Service**: Exposes the API to external traffic.

### Security Measures Implemented
To ensure the security of the API, the following measures are implemented:
- **Environment Variables**: Sensitive data such as database credentials are stored as environment variables.
- **JWT Authentication**: JSON Web Tokens are used for secure authentication.
- **Vulnerability Scanning**: The CI/CD pipeline includes a step to scan the Docker image for vulnerabilities using Trivy.

## Getting Started
To get started with the Flask Web API, clone the repository and run the following commands:

```bash
# Clone the repository
git clone https://github.com/<your-username>/flask-web-app.git

# Navigate to the project directory
cd flask-web-app

# Build and run the Docker container
docker-compose up --build
```

### Access the Application
Once the application is running, open a browser and go to the following URLs:
- [http://<IP>:8080](http://<IP>:8080) => Welcome
- [http://<IP>:8080/how%20are%20you](http://<IP>:8080/how%20are%20you) => I am good, how about you?

## Start Web Server
To start the web server, run:
```bash
FLASK_APP=app.py flask run --host=0.0.0.0
```

## Test
This section is specifically for the Flask Web API.

---

**Note**: This README file includes a summary of the project, its functionality, CI/CD processes, and deployment details. 
