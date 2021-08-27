# jenkins
```
 Use the below instructions to launch Jenkins. 
 Install Docker on your VM. (or) on your laptop
 Command to Launch Jenkins

docker build -t jenkins:jenkins .
##### This step involves downloading and installing many plugins into the image, and may take some time to run depending on your internet connection. Once the plugins have finished installing, run the new Jenkins image:
docker run --name jenkins --rm -d -p 8080:8080 jenkins:jenkins 
```
```
to intigrate genkins with Azure AD. 
 > create application registration in azure AD. 
 > configure redirect URL with jenkins. 
```
