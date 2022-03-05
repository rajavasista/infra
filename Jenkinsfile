pipeline 
{
    agent any

    stages 
    {
        stage('Terraform INIT') 
        {   
            steps 
            {
                sh 'pwd'
                sh 'ls -al'
                sh 'echo "Checking all tf files....."'
                sh 'terraform init'
            }
        }
    }
}