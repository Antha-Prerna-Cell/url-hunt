# url-hunt



#### How to run:

##### Step 1: ``` sudo ansible-playbook playbook.yaml -i hosts```

##### Step 2: ```sudo bash deploy.sh ```





### Rules:

0. All URL will end with ".in"
1. Name of a website can contain only alpha-numeric characters and hyphen '-'
2. All URL will follow lowercase syntax (Google.in is wrong| google.in is right)
3. replace '+' with 'plus' and append '-' in between for joining with other words, for example: for alt+F4 you have to specify URL 'alt-plus-F4'
4. If your URL starts with a number then add character 'n' in front of it. eg: for '2020' the URL will be 'n2020'
5. Should not container dot '.' or space ' '. Replace them with a hyphen '-'