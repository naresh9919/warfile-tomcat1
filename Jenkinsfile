pipeline {
    agent any
    tools {
        maven "maven 3.9.1"
    }
    stages {
        stage("build maven"){
            steps {
                sh "mvn clen install"
            }
        }
        stage("test"){
            steps{
                sh "mvn test"
            }
        }
    }
}