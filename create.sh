# this template accepts 3 parameters and creates a cloud formation stack 
# Parameters: 
#  stack-name : str 
#  template-body : yaml file 
#  parameters : json 
aws cloudformation create-stack --stack-name $1 \
    --template-body file://$2   \
    --parameters file://$3  \
    --capabilities "CAPABILITY_NAMED_IAM"  \
    --region=us-east-1
