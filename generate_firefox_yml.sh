#!/bin/sh
echo "apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: firefox
spec:
  selector:
    matchLabels:
      website: firefox
  template:
    metadata:
      labels:
        website: firefox
    spec:
      containers:
      - name: firefox
        image: jlesage/firefox
        imagePullPolicy: IfNotPresent
        ports:
        - containerPort: 5800
          hostPort: 32000
      hostAliases:"
for svc in $(kubectl get svc -o custom-columns=:.metadata.name)
do
	ip=$(kubectl get svc $svc -o go-template={{.spec.clusterIP}})
	echo "        - ip: \"$ip\"
          hostnames:
            - \"$svc.in\""
done