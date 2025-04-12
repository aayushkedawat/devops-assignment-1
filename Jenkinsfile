
pipeline {
    agent any

    environment {
        APP_ENV = 'dev'
    }

    stages {
        stage('Build') {
            steps {
                echo "Building the application"
                sh 'make build'
            }
        }

        stage('Test') {
            steps {
                echo "Running tests"
                sh 'make test'
            }
        }

        stage('Deploy to Staging') {
            when {
                branch 'develop'
            }
            steps {
                echo "Deploying to STAGING"
                sh './deploy.sh staging'
            }
        }

        stage('Deploy to Production') {
            when {
                branch 'main'
            }
            steps {
                input "Approve to deploy to production?"
                echo "Deploying to PRODUCTION"
                sh './deploy.sh production'
            }
        }
    }

    post {
        failure {
            echo "Build failed, sending notification"
        }
        success {
            echo "Pipeline completed successfully"
        }
    }
}
