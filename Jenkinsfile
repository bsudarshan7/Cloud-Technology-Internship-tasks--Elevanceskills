pipeline {
    agent any

    environment {
        DOCKER_NAMESPACE = "instantprachi"
        IMAGE_NAME       = "jenkins-cicd-app"
        IMAGE_TAG        = "${BUILD_NUMBER}"
        FULL_IMAGE       = "${DOCKER_NAMESPACE}/${IMAGE_NAME}:${IMAGE_TAG}"
        LATEST_IMAGE     = "${DOCKER_NAMESPACE}/${IMAGE_NAME}:latest"
        DOCKER_CREDS_ID  = "dockerhub-creds"
    }

    stages {
        stage('Pull Code from GitHub') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${FULL_IMAGE} -t ${LATEST_IMAGE} ."
            }
        }

        stage('Push Image to Docker Hub') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: "${DOCKER_CREDS_ID}",
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh '''
                        echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                        docker push ${FULL_IMAGE}
                        docker push ${LATEST_IMAGE}
                    '''
                }
            }
        }
    }

    post {
        always {
            sh 'docker logout || true'
            sh 'docker image prune -f || true'
        }
    }
}
