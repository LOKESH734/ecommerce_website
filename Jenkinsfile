pipeline{
    agent none
    
        stages
        {
            stage('checkout')
            {
                agent any
                steps{
                    checkout scm
                }
            }
            stage('Build')
            {
                agent{
                    docker{
                        image 'node:18-alpine'
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
