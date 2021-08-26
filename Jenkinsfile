pipeline {
  agent any
  environment {
    GIT_REPO_NAME = env.GIT_URL.replaceFirst(/^.*\/([^\/]+?).git$/, '$1')
  }
  stages {
    stage('Package Docker container') {
      steps {
        sh 'docker build . -t "localhost:5000/angular-helloworld:${GIT_REPO_NAME}.${env.BRANCH_NAME}.${env.VERSION}"'
        sh 'docker push localhost:5000/angular-helloworld'
        sh 'docker stop angular-helloworld || true'
        sh 'docker run -d --rm --name angular-helloworld -p 4200:8080 localhost:5000/angular-helloworld'
      }
    }

  }
}