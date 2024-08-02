pipeline {
    agent any
    stages {
        stage('Clone'){
            steps {
                git branch: 'main', credentialsId: 'creds-github', url: 'https://github.com/havanbinh2202/Mediplus-Lite.git'
            }
        }
    }
            // send mail notification
    post {
        success {
            emailext (
                body: 'bodyy #${env.BUILD_NUMBER} ${env.BUILD_URL}', 
                subject: 'subjectt-success ${env.JOB_NAME} #${env.BUILD_NUMBER}', 
                to: 'havanbinh22022003@gmail.com'
            )
        }
        failure {
            emailext (
                body: 'bodyy #${env.BUILD_NUMBER} ${env.BUILD_URL}', 
                subject: 'subjectt-failed ${env.JOB_NAME} #${env.BUILD_NUMBER}', 
                to: 'havanbinh22022003@gmail.com'
            )
        }
    }
}