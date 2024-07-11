pipeline {
    agent any
    parameters {
        choice(name: 'NAME', choices: ['One', 'Two', 'Three'], description: 'Pick NAME')
        choice(name: 'LASTNAME', choices: ['Hello ', 'Moto', 'Fello'], description: 'Pick LASTNAME')
        choice(name: 'SHOW', choices: ['true', 'false'], description: 'Pick SHOW')
                }
        }
    stages {
        stage('Build') {
            steps {
                sh 'echo "Build stage executing shell scripting my_fst_jenkins.sh"'
                sh ' bash my_fst_jenkins.sh ${param.NAME} ${param.LASTNAME} ${param.SHOW}'
            }
        }
        stage('Test') {
            steps {
                    sh 'echo "Running test scripts from QA team"'

            } 
        }
        stage('Deploy') {
            steps {
                    sh 'echo "Deploying on K8S Cluster"'

            }
        }
    post { 
        always { 
            echo 'Deleting workplace'
            deleteDir()
        }
    }
    }
