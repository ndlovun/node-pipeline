pipeline {
    agent any

    stages {
        stage('Create SSH keys') {
            steps {
                echo 'Running make create-ssh-keys.'
                sh 'make run-build'
            }
        }
        
    }
    post {
        
        success {
            slackSend iconEmoji: ":+1:", color : "good", message: "Build deployed successfully - ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
            }
        failure {
            slackSend iconEmoji: ":red_circle:", color : "danger", message: "Build failed  - ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
            }
        
    }
    
}