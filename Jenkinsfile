pipeline {
    agent any

    tools {
        maven 'Maven'
        jdk 'JDK17'
    }

    environment {
        IMAGE_NAME = "hiring-app"
        IMAGE_TAG = "1.0.0"
    }

    stages {

        stage('Build Jar') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t $IMAGE_NAME:$IMAGE_TAG .
                '''
            }
        }

        stage('Verify Image') {
            steps {
                sh 'docker images'
            }
        }
    }

    post {
        success {
            echo "Docker Image Built Successfully!"
        }
        failure {
            echo "Docker Build Failed!"
        }
    }
}
