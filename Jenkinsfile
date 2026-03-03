pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    environment {
        SONAR_SERVER = 'SonarServer'
    }

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/shaikhshahbazz/hiring-app.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Sonar Scan') {
            steps {
                withSonarQubeEnv('SonarServer') {
                    sh 'mvn sonar:sonar'
                }
            }
        }

        stage('Quality Gate') {
            steps {
                waitForQualityGate abortPipeline: true
            }
        }

        stage('Upload to Nexus') {
            steps {
                sh 'mvn deploy'
            }
        }
    }
}
