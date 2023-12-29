## File structure of the project

- network-template.yml: cloud formation template to create an EC2 instance within a VPC and an internet gateway attached to it
- parameters.json : parameters to create the previous cloud formation stack. The values are referenced in the template and having the parameters separated offers flexibility in case any changes are required (or the same template to be redeployed with a different name).
- network-and-subnets-template.yml : cloud formation template to create an EC2 instance within a VPC with 4 subnets each one in a different availability zone. 
- parameters2.json : new parameters file
- create.sh : bash script to create a stack through AWS CLI using a cloud formation template and a parameter file (takes 3 parameters: cloud stack name, template file and parameter file)
- update.sh : bash script to update a cloud formation stack

## Result of running the 1st template: 

![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/0537b69f-956b-4496-9905-10e90459e411)

![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/f3466bd9-a922-4149-9d52-2812a07a46ed)


## Result of running the second template 

![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/672b23e1-aeb8-40d0-9759-11d6dbf82703)

![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/42cd145e-d2c6-4451-935b-cac9b01f3c8c)

