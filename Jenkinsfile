pipeline {
    agent any

    stages {

        stage("build") {
            steps {
                echo 'building the application...'
                script {
                    def dockerImage = docker.build("dvirlabs/jenkins-test:${GIT_COMMIT}")
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
            withEnv(["dockerImage"])
            steps {
                sh 'docker push '${dockerImage}'
            }

        }

    }

}