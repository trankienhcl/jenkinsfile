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
                // deploy adapters: [tomcat9(credentialsId: '4147316f-870b-4aea-803e-6e088569c7d1', path: '', url: 'http://43.201.109.191:8088')], contextPath: null, war: '**/*.war'
                deploy adapters: [tomcat9(credentialsId: '4147316f-870b-4aea-803e-6e088569c7d1', path: '', url: 'http://3.37.130.119/8088')], contextPath: null, war: '**/*.war'
            }
        }
    }
  stages{
    stage('clone'){
      steps{
        git 'https://github.com/trankienhcl/jenkinsfile.git'
      }
    }
  }
}
