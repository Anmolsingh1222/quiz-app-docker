pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Anmolsingh1222/quiz-app-docker.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("quiz-app-image")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker rm -f quiz-app-container || true'
                    sh 'docker run -d -p 8081:80 --name quiz-app-container quiz-app-image'
                }
            }
        }
    }
}
