pipeline{
  agent any
  stages{
    stage('clone'){
      steps{
        git 'https://github.com/trankienhcl/jenkinsfile.git'
        sh 'pwd'
        sh "git clone -b main 'https://github.com/trankienhcl/jenkinsfile.git'"
      }
    }
  }
}
