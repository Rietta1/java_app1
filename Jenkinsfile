@Library('jenkins_shared_lib') _

pipeline{

    agent any

    stages{

        stage('Git Checkout'){
        
            steps{
            gitCheckout(
                branch: "main",
                url: "https://github.com/Rietta1/java_app.git"
               )
             }

        }
        stage('Unit Test maven'){
        
            steps{
               script{
                   
                   mvnTest()
               }
            }
        }



    }

    
}