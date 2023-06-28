# Extreme Startup

For this exercise, we will use an automated build pipeline to deploy a simple web application. 
We will use GitHub Actions and Railway, which are easy to set up.

## Set Up a Build Pipeline

### 1. Fork our web app on GitHub, clone it, and get it running locally

- Fork this repo into your own GitHub account.
- Clone your fork locally and import the code into your IDE. 
It’s a Java / Gradle project.
- Run the main method in `ServerApplication`. Then you can see the app running at http://localhost:8080.

### 2. Setting up deployment to the cloud
- Create an account on Railway at [railway.app](https://railway.app/) (you could get an email for confirmation).
- Create an empty project on Railway
- You can change the name later in `Project Settings`.

### 3. Setting up automatic deployment to Railway with GitHub Actions

- Get your Railway API Token and add it to GitHub as a secret variable for your build pipeline. You can get it by navigating to Account Settings > Tokens. Provide a name in `New Token` > and click `Create`.
- Add this token on your GitHub fork by navigating to Settings > Secrets and Variables > Actions. Press `New repository secret` and provide a name and paste the generated Token by Railway.
- Click in `Add a Service` and select your `Github Repo`. This process could take around 1 - 4 minutes (depending on your internet connection). 
- Then in settings, you can create your Domain by clicking `Generate Domain`. 

### 4. Pushing changes through the pipeline
- Make a change to your application (e.g. change some HTML in IndexPage). Commit, push and check it is deployed in the created domain in the previous step.
