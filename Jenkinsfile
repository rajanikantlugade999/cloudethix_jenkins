// Declarative //
pipeline {
    agent any
    environment {
                    dev_acc_id = "163636363"
                    qa_acc_id = "849494833"

     }
     parameters {
        choice(name: 'ACCOUNT', choices: ['DEV', 'QA'], description: 'Pick AWS ACCOUNT')
    }           
    stages {
        stage('Deploy in DEV') {
            when {
                expression {
                params.ACCOUNT == 'DEV'
                }
            }
            steps {
                sh "echo Building the Project in dev aws account ${env.dev_acc_id}"
            }
        }
        stage('Deploy in QA') {
            when {
                expression {
                params.ACCOUNT == 'QA'
                }
    }
        steps {
                sh "echo Building the Project in QA aws account ${env.qa_acc_id}"
            }
        }
    }
    post { 
        always { 
            echo 'Deleting Workplace!'
        }
    }
}

