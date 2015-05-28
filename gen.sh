for  name in `cat domains.txt`;
do
	echo "$(nslookup $name | tail -2 | awk '{print $2}' )\t$name"
done >> ./hosts.txt
