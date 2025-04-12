pipeline {
    agent { label 'docker-ssh-agent' }

    stages {
        stage('Build') {
            steps {
                echo 'Simulating build...'
                sh 'echo Build complete!'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'echo All tests passed!'
            }
        }

        stage('Deploy to Staging') {
            steps {
                echo 'Deploying to staging...'
                sh './deploy.sh staging'
            }
        }

        stage('Approval') {
            steps {
                input message: 'Approve deployment to production?'
            }
        }

        stage('Deploy to Production') {
            steps {
                echo 'Deploying to production...'
                sh './deploy.sh production'
            }
        }
    }

    post {
        success { echo 'Pipeline succeeded!' }
        failure { echo 'Pipeline failed.' }
        always { echo 'Cleaning up...' }
    }
}
