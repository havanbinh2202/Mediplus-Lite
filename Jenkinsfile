pipeline {
    agent any
    stages {
        stage('Clone'){
            steps {
                git branch: 'main', credentialsId: 'creds-github', url: 'https://github.com/havanbinh2202/Mediplus-Lite.git'
            }
        }
        stage('Push docker Hub'){
            steps {
                // This step should not normally be used in your script. Consult the inline help for details.
                withDockerRegistry(credentialsId: 'credss-dockerhub') {
                    // some block
                    sh label: '', script: 'docker build -t binhha2202/devops-th:latest .'
                    sh label: '', script: 'docker push binhha2202/devops-th:latest'
                }
            }
        }
    }
}