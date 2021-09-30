pipeline {
    agent any
    stages {
        stage('Git Checkout') {
            steps{
                checkout scm 
            }
        }
        
        stage('Build Image'){
            steps{
            
            docker.withRegistry('localhost:8080', 'dockerCred') {

                def customImage = docker.build("python-app:${env.BUILD_ID}")
                customImage.push()

            }
            }   
        }
    }
}

/**
node {
    checkout scm

    docker.withRegistry('https://registry.example.com', 'credentials-id') {

        def customImage = docker.build("my-image:${env.BUILD_ID}")

        //Push the container to the custom Registry 
        customImage.push()
    }
}


**/
