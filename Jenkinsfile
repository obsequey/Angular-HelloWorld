pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'npm ci'
        sh 'npm run build'
      }
    }
    stage('Package Docker container') {
      steps {
        sh 'docker build . -t localhost:5000/angular-helloworld'
        sh 'docker push localhost:5000/angular-helloworld'
        sh 'docker run -p 4200:4200 localhost:5000/angular-helloworld'
      }
    }
  }
}
