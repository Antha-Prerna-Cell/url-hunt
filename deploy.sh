#!/bin/sh
for imagename in $(docker images --format {{.Repository}} | grep webhunt/)
do
	url=${imagename##*/}
	helm install $url webhunt-charts/ --set url=$url
done