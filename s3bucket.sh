#!/usr/bin/env bash

BUCKETS=`aws s3api list-buckets --query 'Buckets[*].Name' --output text | tr " " "\n"`
for BUCKET in $BUCKETS
do
  Filename=$1
  OH_NOES=`aws s3api get-bucket-acl --bucket $BUCKET | grep -e 'URI.*http\:\/\/acs\.amazonaws\.com\/groups\/global\/AllUsers\"'`
  if [ $Filename==$BUCKET ]
  then
    echo "$BUCKET"
  fi
done



#!/usr/bin/env bash

BUCKETS=`aws s3api list-buckets --query 'Buckets[*].Name' --output text | tr " " "\n"`
function bucket_exists {
    

    be_bucketname=aws s3api head-bucket \ --bucket $BUCKETS
       
    if [ -e $be_bucketname ]
     then
        aws s3api get-bucket-tagging --bucket $be_bucketname
     {
    "TagSet": [
           {
            "Value": "Roles",
            "Key": "String Identifier"
            } 
        ]
      }
    else
       echo "The bucket doesn't exist"
    fi
}