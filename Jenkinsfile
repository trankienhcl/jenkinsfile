pipeline{
    agent any
    tools{
        maven 'maven'
    }
    stages{
        stage('clone'){
            steps{
                git 'https://github.com/trankienhcl/jenkinsfile.git'
            }
        }
        stage('Build'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('Deploy to tomcat server'){
            steps{
                deploy adapters: [tomcat9(credentialsId: 'a2bf3968-a1c6-4ba6-83c0-84565a2fa2c3', path: '', url: '//http://52.79.195.189:8090/')], contextPath: null, war: '**/*.war'
            }
       }   
    }
}
