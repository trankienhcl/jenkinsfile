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
                deploy adapters: [tomcat9(credentialsId: '87d28f11-91f6-4658-8795-73a01b3f1fab', path: '', url: 'http://52.79.195.189:8090')], contextPath: 'test1', war: '**/*.war'
            }
       }   
    }
}
