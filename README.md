## File structure of the project

There are different cloud formation template files in this project. The final one - built with iterations over the others - is **network-with-subnets-natgateways-and-outputs.yml**
The template creates the following resources: 
* VPC
* Internet Gateway attached with the VPC
* 4 Private subnets in different availability zones to increase availability (2 private and 2 public)
* 2 Nat Gateways - The NAT Gateway is attached to the public subnets and it allows inbout traffic to the private subnets *if* initiated by the private subnets. This can be useful for example to download updates for the resources within the VPC from the internet. 
* Route tables

The template also has a Parameters section to reference parameters in a JSON file and an Output section to save information about the resources created:

![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/059b35df-b697-4460-b53b-79beadafd855)

Other files:

- parameters2.json : new parameters file
  
- create.sh : bash script to create a stack through AWS CLI using a cloud formation template and a parameter file (takes 3 parameters: cloud stack name, template file and parameter file)
  
- update.sh : bash script to update a cloud formation stack, take the same parameters as the previous bash file

### A map of more complex VPC is also available on AWS with traffic rules highlighted:

Public traffic
![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/ffad20fd-4788-4482-b4fe-73b3d53b19ee)


Private traffic: 
![image](https://github.com/dedalus94/cloud-formation-IAC-scripts/assets/49538048/20d7f098-ae1f-4f11-a70c-e4a3c7f703cf)




