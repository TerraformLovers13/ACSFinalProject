Cloud Architecture & Administration - Seneca
Cloud Automation and Control Systems (ACS730)  
Professor: Irina Geiman


Carolina Nonato https://github.com/carolinanonato   
Himanshu Singla  https://github.com/himanshu190995   
Philip Martin https://github.com/pmartin66   
Shiva Koochakpour https://github.com/shivakpkp   


# Final Project: Two-Tier web application automation with Terraform

   ## 1- For running the project:
      1.1- Create a key by the default name id_rsa. 
      1.2- To deploy the project you have to copy the private key to the Bastion host to be able to connect to the web servers.  
   ## 2- Modules:
      - There is a main module folder that included all files related to network, security, load balancing, scalability, bastion.
      - The module also has variable files with dev environment as default.
      
   ## 3- Environments:
      - The project has 3 environments: Dev, Staging and Prod.
      - Each environment has diferent values for ip range, type of EC2 instances and desired instances in scalability.
      
   ## 4- S3 bucket:
      There are three S3 buckets:
     - dev-terraformlovers which contains images for the dev Environment web servers   
           Link : s3://dev-terraformlovers/images/
     - prod-terraformlovers which contains images for the staging Environment web servers   
           Link : s3://prod-terraformlovers/images/
     - stage-terraformlovers which contains images for the prod Environment web servers   
           Link : s3://stage-terraformlovers/images/
            
