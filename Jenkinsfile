pipeline {
    agent {
        dockerfile {
            label 'docker-build'
            dir 'build/Dockerfile'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Done.'
            }
        }
    }
}
