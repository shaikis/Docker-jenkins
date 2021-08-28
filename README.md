# jenkins
```
Prerequisites: 
   add the required packages in requirements.txt file. 
   Make sure you have installed docker. 
 
 Use the below instructions to launch Jenkins using docker.
  Command to Launch Jenkins

docker build -t jenkins:jenkins .
##### This step involves downloading and installing many plugins into the image, and may take some time to run depending on your internet connection. Once the plugins have finished installing, run the new Jenkins image:
docker run --name jenkins --rm -d -p 443:8443 -p 8080:8080 -p 50000:50000  jenkins:jenkinsv2 --httpPort=-1 --httpsPort=8443

docker exec -it fef8f244fcaa bash
cat /var/jenkins_home/secrets/initialAdminPassword

add azure active directory plugins

commit docker changes
docker commit fef8f244fcaa  jenkins/jenkins:ltsv2

```
```
to intigrate jenkins with Azure AD. 
 > create application registration in azure AD. 
 > configure redirect URL with jenkins. 
```

```
To run jenkins on AWS/Azure services. 
  > create ECR/ACR container registry
  > get credientials of acr
  > docker login with credentails.
  > tag the image. 
  > push the image to registry.
  > you can use ECS (or) EKS services to launch the docker image and to maintain HA. 
 ```
