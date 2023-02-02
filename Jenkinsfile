pipeline{
  agent any
  stages{
    stage('clone'){
      steps{
        git 'https://github.com/trankienhcl/jenkinsfile.git'
        sh 'cd ..'
        sh 'rm -r -f ./p14'
        sh "git clone -b main 'https://github.com/trankienhcl/jenkinsfile.git'"
      }
    }
  }
}
