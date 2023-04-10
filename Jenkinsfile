pipeline {
    agent any
    tools {
        maven 'maven 3.9.1'
    }
    stages{
        stage('build maven'){
            steps{
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t nareshbabu1991/webapp .'
                }
            }
        }
        stage('push docker to hub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhub_credentials', variable: 'dockerhub')]) {
                    sh 'docker login --username nareshbabu1991 --password ${dockerhub_credentials}'
}
                    sh 'docker push nareshbabu1991/webapp'
                }
            }
        }
    }
}
