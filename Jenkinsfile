pipeline {
    agent none

    stages {

        stage('Checkout') {
            agent any
            steps {
                checkout scm
            }
        }

        stage('Build') {
            agent {
                docker {
                    image 'node:18-alpine'
                    reuseNode true
                }
            }
            steps {
                sh '''
                cd frontend
                  node -v
                  npm install
                '''
            }
        }
    }
}
