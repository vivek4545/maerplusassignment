# mernplus_assignment
mernplusassignment

This simple java application project  which create jar file using maven. It will then create docker image and push to dockerhub.

Basic assumptions: 

 - OS used is RHEL 8.0
 - JDK 1.8 and maven are installed on OS 
 - you have credentials for dockerhub
 - podman 3.0, tool used as alternative to docker in RHEL 8. 
 NOTE: docker is not supported on RHEL 8 and above versions. podman is introduced to replace docker.
 
 Steps for building project manually:
 
 1. Login to linux machine and  go to project directory , run maven commands
 
     $ cd merplus_assignment
     $ mvn clean install -f my-app/pom.xml

2. Create docker image now 

     $ podman build -t docker.io/technicalguftgu99/merndemo:1.0.0  .

3. Login to docker registry and push image 

     $ podman login  && podman push docker.io/technicalguftgu99/merndemo:1.0.0 


Steps for building project in Jenkins 

1. Go to Jenkins website   
2. Click on " new item "  and create job with type " pipeline job "
3. In "configure" tab , configure git repository and location of Jenkins file with branchname as "master"
4. Save configuration. 
5. create git credentials in jenkins as global credentials and update in Jenkinsfile in github ( in this repository) 
6.run pipeline job  on agent where  maven & jdk is already installed & docker login is already in place .




      
       
 
