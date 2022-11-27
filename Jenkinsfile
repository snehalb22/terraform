pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/snehalb22/terraform.git']]])
            }
        }

        stage('terraform') {
            steps {
                sh('terraform init')
            }
        }

        stage('terraform Action') {
            steps {
                echo "Terraform action is –> ${action}"

                sh("terraform ${action} –> auto-approve")
            }
        }
    }
}
