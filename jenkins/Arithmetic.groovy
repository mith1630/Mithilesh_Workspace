pipeline {
    agent any
     stages {
        stage('Addition') {
            steps {
               sh "myscripts/Add.sh $1 $2"
            }
        }
        stage('Subtraction') {
            steps {
               sh "myscripts/Sub.sh $1 $2"
           }
       }
       stage('Multiplication') {
            steps {
               sh "myscripts/Prod.sh $1 $2"
           }
       }
       stage('Division') {
            steps {
               sh "myscripts/Div.sh $1 $2"
           }
       }
    }
}
