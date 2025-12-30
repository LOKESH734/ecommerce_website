pipeline{
    agent any
    
        stages
        {
            stage('checkout')
            {
                steps{
                    checkout scm
                }
            }
            stage('Build')
            {
                agent{
                    docker{
                        image 'node:18-apline'
                        reuseNode true
                    }
                }
                steps{
                    sh '''
                    npm install
                    node -v
                
                    '''
                }
            }
        }
    }
