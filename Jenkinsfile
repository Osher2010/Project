pipeline {
    agent any

    stages {
        stage('Run Docker Container') {
            steps {
                script {
                    def container = docker.run(
                        image: "project-test:latest",
                        args: ''
                    )

                    sleep time: 15, unit: 'SECONDS'

                    def isRunning = docker.inspectContainer(container.id).isRunning()

                    if (isRunning) {
                        echo 'The Docker container is still running.'
                    } else {
                        echo 'The Docker container has stopped running.'
                    }
                }
            }
        }
    }
}
