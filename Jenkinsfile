@Library('jenkins_shared_lib') _

pipeline{

    agent any

    parameters{

        choice(name: 'action', choices: 'create\ndelete', description: 'Choose create/Destroy')
        string(name: 'ImageName', description: "name of the docker build", defaultValue: 'javapp')
        string(name: 'ImageTag', description: "tag of the docker build", defaultValue: 'v1')
        string(name: 'DockerHubUser', description: "name of the Application", defaultValue: 'vikashashoke')
    }

    stages{

        stage('Git Checkout'){
        when { expression {  params.action == 'create' } }
            steps{
            gitCheckout(
                branch: "main",
                url: "https://github.com/Rietta1/java_app.git"
               )
             }

        }
        stage('Unit Test maven'){
        when { expression {  params.action == 'create' } }
          agent {
                docker { image 'maven:3.8.3-adoptopenjdk-8' }
            }
            steps{
               script{
                   
                   mvnTest()
               }
            }
        }
        stage('Integration Test maven'){
         when { expression {  params.action == 'create' } }
           agent {
                docker { image 'maven:3.8.3-adoptopenjdk-8' }
            }
            steps{
               script{
                   
                   mvnIntegrationTest()
               }
            }
     
        }
        stage('Static code analysis: Sonarqube'){
         when { expression {  params.action == 'create' } }
           agent {
                docker { image 'maven:3.8.3-adoptopenjdk-8' }
            }         
            steps{
               script{
                   
                   def SonarQubecredentialsId = 'sonarqube-api'
                   statiCodeAnalysis(SonarQubecredentialsId)
               }
            }
        }







    }

    
}