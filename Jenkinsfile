pipeline {
    agent any // Or specify a specific agent label like 'local-agent'

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/aayushkedawat/devops-assignment-1.git'
            }
        }
        stage('Build') {
            agent { label 'local-agent' } // Run this stage on the specified agent
            steps {
                echo "Building the application..."
                sh 'python3 app.py' // Simulate a build step
            }
        }
        stage('Test') {
            agent { label 'local-agent' }
            steps {
                echo "Running tests..."
                sh 'echo "No tests defined for this simple app"' // Simulate a test step
            }
        }
        stage('Deploy to Staging') {
            agent any
            steps {
                echo "Deploying to Staging Environment..."
                sh 'echo "Simulating deployment to staging server..."'
            }
        }
        stage('Deploy to Production') {
            agent any
            when {
                branch 'main' // Only deploy to production from the main branch
            }
            steps {
                echo "Deploying to Production Environment..."
                sh 'echo "Simulating deployment to production server..."'
            }
        }
    }
    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
        always {
            echo 'Cleaning up...'
        }
    }
}
