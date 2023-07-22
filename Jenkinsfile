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

        stage('Push image') {
                withDockerRegistry([ credentialsId: "Auth_Dockerhub", url: "dvirlabs/jenkins_test" ]) {
                dockerImage.push()
                }
            }  

}