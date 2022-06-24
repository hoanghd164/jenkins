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
            sh 'docker build -v $(which docker):/usr/bin/docker -t nameimage:version --force-rm -f Dockerfile .'
          }
        } 
    }
}
