# Docker CI Test Repository

This repository is designed to test the Continuous Integration (CI) process of Docker images using GitHub Actions.

## Features

- Build and Push: On `push` or `pull_request` events, GitHub Actions will build the Docker image and push it to the GitHub Container Registry.
- Test: After the Docker image is built and pushed correctly, another job will pull the image and run tests on it.

## Workflow

### CI_build_and_test

This workflow is triggered by `push` or `pull_request` events. The workflow includes the following jobs:

1. Build and Push:
    - Check out the repository using GitHub's checkout action.
    - Log in to the GitHub Container Registry.
    - Build and push the Docker image.
    - Display a list of Docker images.

2. Test:
    - Wait for the completion of the previous job.
    - Log in to the GitHub Container Registry.
    - Pull the Docker image.
    - Execute a Python script inside the Docker image to run tests.
