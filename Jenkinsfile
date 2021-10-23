pipeline {
    agent { dockerfile true }
    stages {

        stage('Initialize'){
            def dockerHome = tool 'Docker'
            env.PATH = "${dockerHome}/bin:${env.PATH}"
        }

        stage('Git Checkout') {
            steps{
                checkout scm
            }
        }

        stage('Build Image'){
            steps{
                    script{

                      docker.withRegistry('https://docker.io/reabetswem/rea-repo', 'dockerCred'){
                      def customImage = docker.build("simplepython-app:${env.BUILD_ID}")
                      customImage.push()

                    }

            }
            }
        }
    }
}
