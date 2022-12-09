,--------.                                   ,---.                            
'--.  .--'  ,---.  ,--.--. ,--.--.  ,--,--. /  .-'  ,---.  ,--.--. ,--,--,--. 
   |  |    | .-. : |  .--' |  .--' ' ,-.  | |  `-, | .-. | |  .--' |        | 
   |  |    \   --. |  |    |  |    \ '-'  | |  .-' ' '-' ' |  |    |  |  |  | 
   `--'     `----' `--'    `--'     `--`--' `--'    `---'  `--'    `--`--`--' 
   
   
   1- For running the project:
      1.1- we have to create create a key by the default name id_rsa
      1.2- when deploy the project you have to copy the key private key to the bastion host to be able to 
           connect to the web servers
   2- modules:
      we have a main module file that included all files related to network, security, load balancing, scalability, bastion .
      the module comprising variable file which has a default value of dev environment.
      
   3- Environment:
      the project have 3 environment : Dev , Stage , prod
      in each environment we have diferent value for ip range , type of EC2 instances , and number of running desire instances in scalability.
      
   4- S3 bucket:
      we have 3 S3 bucket:
      4.1- dev-terraformlovers which containe images which are reperesented in the web servers in dev Environment
           link : s3://dev-terraformlovers/images/
      4.2- prod-terraformlovers which containe images which are reperesented in the web servers in prod Environment 
           link : s3://prod-terraformlovers/images/
      4.3- stage-terraformlovers which containe images which are reperesented in the web servers in stage Environment
            Link : s3://stage-terraformlovers/images/
            
