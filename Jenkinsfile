pipeline{
  agent any
  stages{
    stage("Git Clone"){
      steps{
//         echo "hoanghd1"
        git branch: 'main', url: 'https://github.com/hoanghd164/my_project.git'
//         git 'https://github.com/hoanghd164/my_project.git'
      }
    }
    stage("Build"){
          steps{
//             echo "hoanghd2"
            
            sh 'docker build -t dockerfilejob:version -f dockerfile .'
          }
        }    
    }
}
