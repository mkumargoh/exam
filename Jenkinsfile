def remote = [:]
remote.name = 'manish'
remote.host = '192.168.1.4'
remote.port = 22
remote.allowAnyHosts = true
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
        stage('Deployment'){
        steps {
            script {
             // move the new changed
             //sh 'mv index.html /var/www/html'
             withCredentials([usernamePassword(credentialsId: 'manishid', passwordVariable: 'pass', usernameVariable: 'user')]) {
             remote.user = user
             remote.password = pass
    }
}
