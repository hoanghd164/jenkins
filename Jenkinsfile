pipeline{
  agent any
  stages{
    stage("Git Clone"){
      steps{
        git 'https://github.com/hoanghd164/my_project.git'
      }
    }
    stage("Build Docker Image Form Docker File"){
          steps{
            sh 'docker build -t dockerfilejob:version -f dockerfile .'
          }
        }    
    }
}
