pipeline {
    agent{
            docker {
                image 'jenkins-blueocean:2.401.2-1'
                args '-v /var/run/docker.sock:/var/run/docker.sock'
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