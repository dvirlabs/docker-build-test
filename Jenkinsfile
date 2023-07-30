pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "dvirlabs/jenkins-test:${GIT_COMMIT}"
    }

    stages {

        stage("build") {
            steps {
                echo 'building the application...'
                script {
                    def dockerImage = docker.build DOCKER_IMAGE
                }
            }
        }

        // stage("test") {
        //     steps {
        //         echo 'The value of the GIT_COMMIT environment variable is ' +''+ ${env.GIT_COMMIT}   
        //     }
        // }

        stage("login") {
            steps {
                echo 'login to Dockerhub...' 
                sh 'docker login -u dvirlabs -p dckr_pat_pPy6gAAksSYnRq0SUFo_-XML9hY'
            }
        }

        stage("Push image") {
            steps {
                echo 'push to dockerhub'
                script {
                    def dockerImage = DOCKER_IMAGE.push()
                }
                sh 'docker push' +' '+ dockerImage
            }

        }

    }

}