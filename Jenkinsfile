pipeline {
  agent any

  environment {
    SECRET_STRING = credentials('SECRET_STRING')
  }

  stages {
    stage('Package Docker container') {
      steps {
        echo '$SECRET_STRING'
        sh 'docker build . -t localhost:5000/angular-helloworld'
        sh 'docker push localhost:5000/angular-helloworld'
        sh 'docker stop angular-helloworld || true'
        sh 'docker run -d --rm --name angular-helloworld -p 4200:8080 localhost:5000/angular-helloworld'
      }
    }
  }
}
