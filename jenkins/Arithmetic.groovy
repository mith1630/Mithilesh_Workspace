pipeline {
    agent any
     stages {
        stage('Addition') {
            steps {
               sh "myscripts/Add.sh $a $b"
            }
        }
        stage('Subtraction') {
            steps {
               sh "myscripts/Sub.sh $a $b"
           }
       }
       stage('Multiplication') {
            steps {
               sh "myscripts/Prod.sh $a $b"
           }
       }
       stage('Division') {
            steps {
               sh "myscripts/Div.sh $a $b"
           }
       }
    }
}