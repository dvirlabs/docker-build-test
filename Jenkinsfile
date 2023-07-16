pipeline {
    agent{
            docker {
                image 'dvirlabs/jenkins-test:jenkins-blueocean'
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