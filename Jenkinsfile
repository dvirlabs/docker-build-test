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
                mail to: 'dvirlabs@gmail.com',
                subject: 'Test email',
                body: 'This is a test'
        }
    }
}