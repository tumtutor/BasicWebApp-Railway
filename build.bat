Rem Build the project
call ./gradlew.bat clean build

Rem Build the image
call docker buildx create
call docker buildx build --platform linux/amd64 --progress plain --load -t eist .
call docker buildx stop
call docker buildx rm

Rem Upload the updated image to DockerHub
Rem Note:
Rem - You need to be logged into docker on your machine
Rem - You need to have created the repository on DockerHub, in this case "anontutor/basic-web-app"
Rem - In your case, you must change all instances of "anontutor/basic-web-app" to your own repository name
call docker tag eist:latest anontutor/basic-web-app:0.0.1
call docker push anontutor/basic-web-app:0.0.1

Rem Remove local images
call docker rmi eist:latest
call docker rmi anontutor/basic-web-app:0.0.1
