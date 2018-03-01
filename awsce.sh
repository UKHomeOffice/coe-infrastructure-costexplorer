#!/bin/bash


echo '[
	{
	"Type": "DIMENSION",
	 "Key": "LINKED_ACCOUNT"
	}
]' > groupby.json

echo '
{
"Start": "2018-02-16",
 "End": "2018-02-17"
} ' > date.json

echo '
{
	"Dimensions": {
		"Key": "LINKED_ACCOUNT",
		"Values": ["<insert account no>"]
	}
}'  > filter.json

aws ce  --profile <insert profile>  --region=us-east-1 get-cost-and-usage --time-period file://date.json --granularity MONTHLY --metrics UnblendedCost --group-by file://groupby.json --filter file://filter.json
