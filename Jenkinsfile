pipeline {
    agent{
            docker {
                image 'docker:dind'
            }
    }

    stages {

        stage("Check Docker") {
            steps {
                sh 'mkdir -m 777 /.docker'
                sh 'docker --version'
            }
        }

        stage("build") {
            steps {
                sh 'docker build -t httpd-jenkins .'
            }
        }

    }
}