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
            post{
                success{
                    echo "Archiving the Artifacts"
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
        stage('Deploy to tomcat server'){
            steps{
                deploy adapters: [tomcat9(credentialsId: '', path: '', url: 'http:// 54.180.8.103 :8080')], contextPath: null, war: '**/*.war'
            }
       }   
    }
}
