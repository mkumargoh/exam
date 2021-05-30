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
                sh 'docker login -u manish012 -p manish012 '
            }
        }
        stage('image push') {
            steps {
            sh 'docker tag apache2 manish012/apacheweb:apache1'
            sh 'docker push manish012/apacheweb:apache1'
            }
        }
    }
}
