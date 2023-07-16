pipeline {
    agent{
            docker {
<<<<<<< HEAD
                image 'docker:dind'
=======
                image 'docker:'
>>>>>>> 01da98c (change image)
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