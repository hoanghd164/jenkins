pipeline{
  agent any
  stages{
    stage("Git Clone"){
      steps{
        git branch: 'main', url: 'https://github.com/hoanghd164/my_project.git'
      }
    }
    stage("Check docker file"){
          steps{
            sh 'ls'
          }
        }    
    stage("Build"){
          steps{           
            sh 'docker build -t dockerfilejob:ver1 --force-rm -f Dockerfile .'
          }
        } 
    }
}
