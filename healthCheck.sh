#!/bin/bash
for i in {1..10}
do
        name="user$i"
	first="{\"username\": \"$name\""
	second="$first , \"password\": \"123456\"}"
	curl -X POST http://myblog.com:30257/accounts -H "Content-Type: application/json" -d "$second" | json_pp	
done
