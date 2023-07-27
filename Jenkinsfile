pipeline {
    agent any

    stages {

        stage("build") {
            steps {
                echo 'building the application...'
                script {
                    def dockerImage = docker.build("dvirlabs/jenkins-test:push-test")
                }
            }
        }

        stage("test") {
            steps {
                echo 'testing the application...' 
                sh 'docker --version'
            }
        }

        stage("login") {
            steps {
                echo 'login to Dockerhub...' 
                sh 'docker login -u dvirlabs -p dckr_pat_pPy6gAAksSYnRq0SUFo_-XML9hY'
            }
        }

        stage("Push image") {
            steps {
                sh 'docker push dvirlabs/jenkins-test:push-test'
            }

        }

    }

}