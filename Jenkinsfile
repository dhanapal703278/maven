pipeline{
    agent any
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
