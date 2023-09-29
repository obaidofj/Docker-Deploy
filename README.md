# Docker to serve html files by nginx

This project use docker with ngnix to serve html pages in the github reapo, and a github action fiel to build the docker imge and deploy it to docker hub , and i used the follwing files for that:
  
- Dokerfile : to specify how the docker will be and what it has , as it will to get nginx image and copy file to the html serve directory of ngnix and expose port and run nginx when the docker start.
  
- docker-compose.yml file to build and start the docker and specify any other configuration we want.
  
- docker-compose-prod file same as priviose file but used in production and on deployment.
  
- build.yml github action workflow file, to automat deployment of docker image to docker hub , but before that we clone the repo build and publish docker image to docker hub. so we can add another instruction to make docker run in EC2 or another place using the image


## To test the repo localy:
  
First you need to have docker in your operating system then clone the reapo then run :  
```
docker-compose up
```
Then in web browser we put this url:  
**localhost:8080**  
and press enter. then the index page of the site displayed