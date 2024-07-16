pipeline {
    agent any
    
    parameters {
        string(name: 'ACCOUNT_NUMBER', defaultValue: '12345678', description: 'Enter the account number')
    }
    
    environment {
        ACCOUNT_NUMBER = "${params.ACCOUNT_NUMBER}"
    }

    stages {
        stage('Initialize') {
            steps {
                echo "Initializing pipeline with account number: ${ACCOUNT_NUMBER}"
            }
        }

        stage('Validate Account Number') {
            steps {
                script {
                    if (!isValidAccountNumber(ACCOUNT_NUMBER)) {
                        error "Invalid account number: ${ACCOUNT_NUMBER}"
                    }
                }
            }
        }

        stage('Process Account Number') {
            steps {
                script {
                    processAccountNumber(ACCOUNT_NUMBER)
                }
            }
        }

        stage('Finalize') {
            steps {
                echo "Pipeline execution completed for account number: ${ACCOUNT_NUMBER}"
            }
        }
    }
}

def isValidAccountNumber(accountNumber) {
    // Simple validation: check if the account number is numeric and has 8 digits
    return accountNumber.isNumber() && accountNumber.length() == 8
}

def processAccountNumber(accountNumber) {
    // Sample processing logic
    if (accountNumber == '12345678') {
        echo "Default account number detected: ${accountNumber}"
    } else {
        echo "Processing account number: ${accountNumber}"
    }
}
