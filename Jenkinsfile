pipeline {
    agent any

    environment {
        NODE_HOME = tool name: 'NodeJS', type: 'NodeJS'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'development', url: 'https://github.com/yourusername/my-web-app.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                script {
                    sh 'npm install'
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    sh 'npm test'
                }
            }
        }

        stage('Build Application') {
            steps {
                script {
                    sh 'npm run build'
                }
            }
        }

        stage('Deploy to Staging') {
            steps {
                script {
                    sh 'deploy_script.sh staging'  // Customize the deployment script
                }
            }
        }

        stage('Deploy to Production') {
            when {
                branch 'main'
            }
            steps {
                script {
                    sh 'deploy_script.sh production'  // Customize the deployment script
                }
            }
        }
    }

    post {
        success {
            echo 'Build and Deployment Succeeded!'
        }
        failure {
            echo 'Build or Deployment Failed!'
        }
    }
}

