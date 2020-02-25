#!/bin/sh
for imagename in $(docker images --format {{.Repository}} | grep webhunt/)
do
	url=${imagename##*/}
	helm install $url webhunt-charts/ --set url=$url
done
echo "wait for 7sec...."
sleep 7
bash generate_firefox_yml.sh | kubectl apply -f - 