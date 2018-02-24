
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

example 1 : total
 
 	$ aws ce  --profile <profile name>  --region=us-east-1 get-cost-and-usage --time-period file://dates.json --granularity MONTHLY --metrics BlendedCost
 
example 2 : per account

	$ aws ce  --profile <profilename>  --region=us-east-1 get-cost-and-usage --time-period file://date.json --granularity MONTHLY --metrics UnblendedCost --group-by file://groupby.json
	

json files

groupby.json

	[	
		{
		"Type": "DIMENSION",
		 "Key": "LINKED_ACCOUNT"
		}
	]

date.json

	{
  	"Start": "2018-02-16",
 	 "End": "2018-02-17"
	}




	



# More info


	https://docs.aws.amazon.com/cli/latest/reference/ce/index.html#cli-aws-ce
