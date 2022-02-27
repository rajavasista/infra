pipeline 
{
    agent any

    stages 
    {
        stage('Hello') 
        {
            steps 
            {
                script {
                    if(params.Environment == 'development') 
                    {
                        echo "Env=" params.Environment
                        sh 'echo "This is Dev Environment"'

                    }
                }
                echo 'Hello World !!!'
                git branch: 'main', credentialsId: 'GITHUB', url: 'git@github.com:rajavasista/infra.git'
            }
        }
        stage('Hi') 
        {
            steps 
            {
                echo 'Hi !!!'
                sh 'echo "hello vasista"'
            }
        }
        stage('Bye') 
        {
            steps 
            {
                echo 'Bye !!!'
            }
        }
    }
}