pipeline{
  agent any
  tools{
        maven 'maven'
  }
  stages{
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
                deploy adapters: [tomcat9(credentialsId: '4147316f-870b-4aea-803e-6e088569c7d1', path: '', url: 'http://13.125.254.96:8080')], contextPath: null, war: '**/*.war'
            }
       }
        stage('clone'){
            steps{
                git 'https://github.com/trankienhcl/jenkinsfile.git'
      }
    }
  }
}
