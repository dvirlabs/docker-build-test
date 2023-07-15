pipeline {
    agent{
            docker {
                image 'docker:dind'
                args --privilage
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