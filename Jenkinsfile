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
             withCredentials([usernamePassword(credentialsId: 'manishid', passwordVariable: 'pass', usernameVariable: 'user')]) {
             remote.user = user
             remote.password = pass
             withKubeConfig(caCertificate: '', clusterName: '', contextName: '', credentialsId: 'kubernetes', namespace: '', serverUrl: ''){
             sh 'kubectl apply -f deployment.yaml'
             sh 'kubectl apply -f service.yaml'
             }
             }
            }
        }
        }
    }
}
