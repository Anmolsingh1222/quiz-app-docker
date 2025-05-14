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
                bat 'docker build -t quiz-app-image .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run -d -p 80:80 quiz-app-image'
            }
        }
    }
}
