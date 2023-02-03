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
  }
}
