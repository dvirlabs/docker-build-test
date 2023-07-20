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

        stage("deploy") {
            steps {
                echo 'deploying the application...'
            }
        }
    }

    post{
        always {
            emailext(subject: 'email job test' body: 'this is a test mail of a job' replyTo: 'dvirlabs@gmail.com')
        }
    }
}