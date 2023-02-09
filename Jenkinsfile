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
                deploy adapters: [tomcat9(credentialsId: '4cfd1ac6-1eaa-45ef-ab4a-6632241b1f19', path: '', url: 'http://52.79.195.189:8090')], contextPath: null, war: '**/*.war'
            }
       }   
    }
}
