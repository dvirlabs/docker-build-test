pipeline {
    agent{
            docker {
                image 'docker:dind'
            }
    }

    stages {

        stage("build") {
            steps {
                sh 'echo hello world >> /tmp/echo-test.txt'
            }
        }

    }
}