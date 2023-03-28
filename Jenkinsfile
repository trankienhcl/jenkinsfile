pipeline{
    agent any
    tools{
        maven 'mvn'
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
                deploy adapters: [tomcat9(credentialsId: 'tomcatlogin', path: '', url: 'http://localhost:8090/')], contextPath: 'clean package', war: '**/*.war'
            }
       }   
    }
}
