pipeline {
    agent any
    stages {
        stage('---clean---') {
            steps {
                sh "mvn clean"
            }
        }
        stage('---package---') {
            steps {
                sh "mvn package"
            }
        }
        
        stage('--docker build--') {
            steps {
                sh "docker build -t shivambhardwaj1901/project_app ."
            }
        }
    }
}
