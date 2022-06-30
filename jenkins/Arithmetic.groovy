pipeline {
    agent any

    stages {
        stage('Arithmetic Operation') {
            steps {
               sh "myscripts/logical.sh $a $b $c"
            }
        }
    }
}
