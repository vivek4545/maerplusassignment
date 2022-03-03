pipeline {
    agent { label any }
    stages {
        stage ('code checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'c0ca3410-0eb6-4700-8a42-337d439e75ce', url: 'https://github.com/vivek4545/mernplus_assignment.git']]])
            }
        }
        stage ('Build') {
            steps {
            sh 'mvn install -f my-app/pom.xml '
              }
          
        }
       stage ('Create Docker image') {
            steps {
            sh ' podman build -t docker.io/technicalguftgu99/merndemo:1.0.0 . && podman push docker.io/technicalguftgu99/merndemo:1.0.0 '
              }
          
        }
    }
     post {
     always { cleanWs() }
     }
}
