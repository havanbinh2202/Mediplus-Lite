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
                body: """bodyy #$BUILD_NUMBER $BUILD_URL""", 
                subject: "subjectt-success $JOB_NAME #$BUILD_NUMBER", 
                to: 'havanbinh22022003@gmail.com'
            )
        }
        failure {
            emailext (
                body: """bodyy #$BUILD_NUMBER""", 
                subject: "subjectt-failed ", 
                to: 'havanbinh22022003@gmail.com'
            )
        }
    }
}