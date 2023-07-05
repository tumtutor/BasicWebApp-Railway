# Extreme Startup
For this exercise, we will use an automated build pipeline to deploy a simple web application. 

## Set Up a Build Pipeline

### 1. Fork our web app on GitHub, clone it, and get it running locally

- Fork this repo to your GitHub account.
- Clone your fork locally and import the code into your IDE. 
It’s a Java / Gradle project.
- Run the main method in `ServerApplication`. Then you can see the app running at http://localhost:8080.
- Alternatively, you can also use the `./gradlew bootRun` command to run the application.

### 2. Setting up deployment to the cloud using Docker and Render
- Create a Docker account at [https://hub.docker.com/signup](https://hub.docker.com/signup) (you will get an email asking for confirmation).
- Install Docker on your machine (see [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/)).
- (Only for non Docker Desktop users) If you already have docker installed, and are not using Docker Desktop, make sure to install `docker-buildx`
- Create a Render account at [https://dashboard.render.com/](https://dashboard.render.com/).
- Navigate to your Account Settings, scroll to the bottom and enable `Early Access`. Without this step, you will not be able to use Docker for your deployments.

### 3. Building the Docker image

Note: in this guide, we will be using 0.0.1 as our tag, this will simplify the process, but in a real world scenario, you can use any tag you like.
- Create a new Docker repository in Docker Hub. You can name it whatever you like, just make sure to remember the name (you will need it later) and make the repository public. In our example, we will call it `anontutor/basic-web-app`.
- If you are using Mac/Linux: edit the `build.sh` file according to the instructions in the file.
- If you are using Windows: edit the `build.bat` file according to the instructions in the file.
- Run the script to build the Docker image. You can do this by running `./build.sh` (Mac/Linux) or `build.bat` (Windows).
- If the build is successful, you should see the image in your Docker Hub repository, at [https://hub.docker.com/repository/docker/your-username/basic-web-app](https://hub.docker.com/repository/docker/your-username/basic-web-app). In our example, it is at [https://hub.docker.com/repository/docker/anontutor/basic-web-app](https://hub.docker.com/repository/docker/anontutor/basic-web-app).

### 4. Deploying to Render
- Create a new Web Service and choose `Deploy an existing image from a registry`
- The image url should have the following format: `your-username/basic-web-app:0.0.1`. In our example, it is `anontutor/basic-web-app:0.0.1`.
- Give your Web Service a name, for example `basic-web-app` and for the region select `Frankfurt`
- Wait for the deployment to finish and you are done!
- You can now access your app at the URL provided to you by Render, which you should be able to see in the top left corner of the page.
