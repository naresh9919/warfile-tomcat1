pipeline {
    agent any
    tools {
        maven 'maven3'
    }
    stages {
        stage("build maven"){
            steps {
                sh 'mvn clean install'
            }
        }
        stage("test"){
            steps{
                sh 'mvn test'
            }
        }
        stage("static code analasis"){
            steps {
                withSonarQubeEnv("sonarqube"){
                    sh "mvn sonar:sonar"
                }
            }
        }
        stage("Quality Gate Status"){
            steps {
                script {
                    waitForQualityGate abortPipeline: false, credentialsId: 'sonar_token'
                }
            }
        }
    }
}
