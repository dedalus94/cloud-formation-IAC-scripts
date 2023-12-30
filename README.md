## File structure of the project

There are different cloud formation template files in this project. The final one - built with iterations over the others - is **network-with-subnets-natgateways-and-outputs.yml**
The template creates the following resources: 
* VPC
* Internet Gateway attached with the VPC
* 4 Private subnets in different availability zones to increase availability (2 private and 2 public)
* 2 Nat Gateways - The NAT Gateway is attached to the public subnets and it allows inbout traffic to the private subnets *if* initiated by the private subnets
* Route tables

The template also has a Parameters section to refrence parameters in a json file and an Output section to save information about the resources created:

![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/059b35df-b697-4460-b53b-79beadafd855)

- parameters2.json : new parameters file
  
- create.sh : bash script to create a stack through AWS CLI using a cloud formation template and a parameter file (takes 3 parameters: cloud stack name, template file and parameter file)
  
- update.sh : bash script to update a cloud formation stack



## Result of running the 1st template: 


![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/0537b69f-956b-4496-9905-10e90459e411)

### The  creation steps can be found in the 'Events' tab of the stack

![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/f3466bd9-a922-4149-9d52-2812a07a46ed)


## Result of running the second template 


![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/672b23e1-aeb8-40d0-9759-11d6dbf82703)

### A map of more complex VPC is also available on AWS:

![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/42cd145e-d2c6-4451-935b-cac9b01f3c8c)


## Outputs

![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/059b35df-b697-4460-b53b-79beadafd855)


