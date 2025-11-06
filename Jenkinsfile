pipeline {
    agent none
    stages {
        stage('Maven Install') {
            agent {
                docker {
                    image 'maven:3.9-eclipse-temurin-25'
                    reuseNode true
                }
            }
            steps {
                sh 'mvn clean install'
                // Verificar que el JAR existe
                sh 'ls -la target/'
                sh 'find target/ -name "*.jar"'
                // Guardar el JAR para el siguiente stage
                stash name: 'app-jar', includes: 'target/*.jar'
            }
        }
        stage('Docker Build') {
            agent any
            steps {
                // Recuperar el JAR del stage anterior
                unstash 'app-jar'
                // Verificar que el JAR está disponible
                sh 'ls -la target/'
                sh 'docker build -t sofiacorrea14/spring-petclinic:latest .'
            }
        }
    }
}