pipeline {
    agent any

    stages {
        stage('image check') {
            steps {
                sh "docker images"
            }
        }
        stage('image build') {
            steps {
                sh 'docker build -t apache2 .'
                sh 'docker images'
            }
        }
        stage('docker hub login') {
            steps {
                sh 'docker login -u mkumar012 -p manish012 '
            }
        }
        stage('image push') {
            sh 'docker tag apache2 mkumar012/apacheweb:apache'
            sh 'docker push mkumar012/apacheweb:apache'
        }
    }
}
