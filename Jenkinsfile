pipeline{
    agent any
    tools {
        maven 'maven123'
    }
    stages{
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh "mvn --version"
                sh "mvn clean install"
            }
        }
    }
}
