# Python-Api-App-Bastion-Host
Python project to show the current date/time as an API endpoint - Terraform config to create an EC2 instance that can be used as a bastion host. Assume a VPC with public subnets is already existing

# Steps To Run Python APP API 

# This APP Creates a new directory for your project:

bash
mkdir flask_datetime_api  
cd flask_datetime_api  

Create a virtual environment and install Flask:

bash
python3 -m venv venv  
source venv/bin/activate  
pip install Flask  

Docker Commands:

docker build -t flask-datetime-api .
docker run -p 5000:5000 flask-datetime-api

Test the API:
Open your browser or use curl to access http://localhost:5000/datetime   OR 

http://127.0.0.1:5000/datetime


# Insturctions to Run Terraform Bastion Host and also Create SG

We Assume you have a VPC with Tag Name:MyVPC  and Public Subnet with the Name:PublicSubnet, or you can use any Name of your VPC and Name of the Public subnet,

Please provide your AWS Secret Key in the Terraform Code

Please provide AMI ID according to your region and the AMI selected

I am using AMI ID  Ubuntu  "ami-0f5ee92e2d63afc18" for AP-south-1 region. you can set your AMI ID.

you should  use your own Public IP or Your Office Public Subnet otherwise code will allow SSH on port 22 for all over internet with 0.0.0.0/0

SSH into Bastion host using command below

ssh -i "EKS-Key-PAIR.pem" ubuntu@ec2-13-201-68-146.ap-south-1.compute.amazonaws.com

as i am using Ubuntu AMI in the AP-south-1 region.
