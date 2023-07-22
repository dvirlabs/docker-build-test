pipeline {
    agent any

    stages {

        stage("build") {
            steps {
                echo 'building the application...'
                sh 'docker build -t test-pipline .'
            }
        }

        stage("test") {
            steps {
                echo 'testing the application...'
            }
        }

        stage("Push image") {
            steps {
               script {
                    withDockerRegistry([ credentialsId: "Auth_Dockerhub", url: "https://index.docker.io/v1/" ]) {
                    dockerImage.push(message: "Pushing image to Docker Hub") 
                }
               }
            }

        }

    }

}