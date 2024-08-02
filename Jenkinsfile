pipeline {
    agent any
    stages {
        stage('Clone'){
            steps {
                git branch: 'main', credentialsId: 'creds-github', url: 'https://github.com/havanbinh2202/Mediplus-Lite.git'
            }
        }
    }
        stage('Push docker Hub'){
            steps {
            // This step should not normally be used in your script. Consult the inline help for details.
                withDockerRegistry(credentialsId: 'dockerhub', url:'') {
                    // some block
                    sh label: '', script: 'docker build -t binhha2202/devops-th:latest .'
                    sh label: '', script: 'docker push binhha2202/devops-th:latest'
                }
            }
        }
            // send mail notification
    post {
        success {
            emailext (
                body: 'bodyy #$BUILD_NUMBER $BUILD_URL', 
                subject: 'subjectt-success $JOB_NAME #$BUILD_NUMBER', 
                to: 'havanbinh22022003@gmail.com'
            )
        }
        failure {
            emailext (
                body: 'bodyy #$BUILD_NUMBER ${env.BUILD_URL}', 
                subject: 'subjectt-failed ${env.JOB_NAME} #${env.BUILD_NUMBER}', 
                to: 'havanbinh22022003@gmail.com'
            )
        }
    }
}