# url-hunt



#### License

This work is licensed on Apache 2.0. You can mention it using this repo url [github.com/parthyadav3105/url-hunt](https://github.com/parthyadav3105/url-hunt). Or mention us with our twitter handle [@parthyadav3105](https://twitter.com/parthyadav3105) and [@adi0509](https://twitter.com/adi0509)



Run the following command at master node of Kubernetes cluster

#### How to run:

##### Step 1: ``` sudo ansible-playbook playbook.yaml -i hosts```

##### Step 2: ```sudo bash deploy.sh ```





###### Prerequisite

* Docker
* Ansible
* Helm
* Kubernetes cluster up and running



Note: Name rules are strict because they follow docker and Kubernetes naming convention both.

### Rules:

0. All URL will end with ".in"
1. Name of a website can contain only alpha-numeric characters and hyphen '-'
2. All URL will follow lowercase syntax (Google.in is wrong| google.in is right)
3. replace '+' with 'plus' and append '-' in between for joining with other words, for example: for alt+F4 you have to specify URL 'alt-plus-f4'
4. If your URL starts with a number then add character 'n' in front of it. (eg: for '2020' the URL will be 'n2020' )
5. Should not container dot '.' or space ' '. Replace them with a hyphen '-'
