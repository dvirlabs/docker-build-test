pipeline {
    agent{
            docker {
                image 'jenkins-blueocean'
                args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

    stages {

        stage("build") {
            steps {
                sh 'python --version'
            }
        }

    }
}