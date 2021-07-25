##s3 bucket stores our sam template which we need to deploy
aws cloudformation package --template-file template.yaml --output-template-file sam-template.yaml --s3-bucket helloworld-sam-mars


#Deploy stack
#point to template file created by previous command and a stack name as well as your region you're deploying
aws cloudformation deploy --template-file /Users/ramvegiraju/Desktop/personalProjects/CFN-Example/sam-template.yaml --stack-name test-stack --capabilities CAPABILITY_IAM --region us-east-1

#Delete stack
aws cloudformation delete-stack --stack-name test-stack --region us-east-1
