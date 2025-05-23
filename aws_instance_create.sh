#!/bin/bash

####################################################################################
# This script to create AWS EC2 Instances based on user input and count value
####################################################################################

# Prompt user to enter EC2 Instance base name and count and store in BASE_NAME and COUNT variable

read -p "Enter base name for EC2 instances: " BASE_NAME

read -p "Enter EC2 instance count: " COUNT

# Define EC2 Configuration Parameters

IMAGE_ID="ami-0af9569868786b23a"
INSTANCE_TYPE="t2.micro"
KEY_NAME="ec2-keypair-new"
SECURITY_GROUP_ID="sg-05337451e27b04fa6"

# Command to create AWS instance with fowllowing input parameters

for i in $(seq 1 $COUNT); do
  INSTANCE_NAME="$BASE_NAME-$i"
  echo "Creating Instance: $INSTANCE_NAME"
 
  aws ec2 run-instances \
    --image-id "$IMAGE_ID" \
    --instance-type "$INSTANCE_TYPE" \
    --key-name "$KEY_NAME" \
    --security-group-ids "$SECURITY_GROUP_ID" \
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]" 
done
