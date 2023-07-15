pipeline {
    agent{
            docker {
                image 'docker:dind'
            }
    }

    stages {

        stage("build") {
            steps {
                sh 'docker build -t httpd-jenkins .'
            }
        }

    }
}