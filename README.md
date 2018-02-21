
# Intro 


AWS cost explorer is now accessible via cli.


# Pre-condition 


enable access to ce service 

	{
  			"Version": "2012-10-17",
  			"Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ce:*"
      ],
      "Resource": [
        "*"
      ]
    }
  		]
  	}



# CLI example
 
 
 	$ aws ce  --profile <profile name>  --region=us-east-1 get-cost-and-usage --time-period file://dates.json --granularity MONTHLY --metrics BlendedCost
 


# More info


	https://docs.aws.amazon.com/cli/latest/reference/ce/index.html#cli-aws-ce
