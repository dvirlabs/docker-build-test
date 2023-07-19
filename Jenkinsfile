pipeline {
    agent{
            docker {
                image 'docker:20.10.7-dind'
                args '--privileged --group-add 999'
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