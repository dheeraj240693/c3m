import json
import boto3

def lambda_handler(event, context):
    role_arn_list=open("/var/task/role_arn.txt", "r")
    # return role_arn_list
    buckets_list=[]
    for each_role_arn in role_arn_list.readlines():
        AccountId=each_role_arn.split(':')[4]
        print("Assuming account ID: {} role to list buckets".format(AccountId))
        sts_conn = boto3.client('sts')
        aws_temp_cred=sts_conn.assume_role(RoleArn=each_role_arn, RoleSessionName="testing")["Credentials"]
        print("establishing connection to account with temporary credentials")
        s3_client=boto3.resource(aws_access_key_id=aws_temp_cred['AccessKeyId'],
                                 aws_secret_access_key=aws_temp_cred['SecretAccessKey'],
                                 aws_session_token=aws_temp_cred['SessionToken'], service_name="s3")
        print("---------AccountId {} Bucket's list-------".format(AccountId))
        for bucket in s3_client.buckets.all():
            print(bucket.name)
        
        
    # TODO implement
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }
