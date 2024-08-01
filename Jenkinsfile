pipeline {
    agent any
    stages {
        stages('Clone'){
            steps {
                git credentialsId: 'github', url: 'https://github.com/havanbinh2202/Mediplus-Lite.git'
            }
        }
        stages('Push docker Hub'){
            steps {
                // This step should not normally be used in your script. Consult the inline help for details.
                withDockerRegistry(credentialsId: 'creds-dockerhub', url:'') {
                // some block
                    sh label: '', script: 'docker build -t binhha2202/devops-th .'
                    sh label: '', script: 'docker push binhha2202/devops-th'
                }
            }
        }
    }
}