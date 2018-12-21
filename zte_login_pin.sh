#!/bin/bash 

pin=1234
password=qwerty123
hashed_password=$(printf $password | base64 -)

login_request="isTest=false&goformId=LOGIN&password=$hashed_password"
pin_request="isTest=false&goformId=ENTER_PIN&PinNumber=$pin"

# login with password in base64 (not required to authenticate with PIN)
#curl -X POST --header "Referer: http://192.168.0.1/index.html" --header "X-Requested-With: XMLHttpRequest" --data "$login_request" http://192.168.0.1/goform/goform_set_cmd_process

# send PIN to authenticate
curl -X POST --header "Referer: http://192.168.0.1/index.htX-Requested-With: XMLHttpRequest" --data "$pin_request" http://192.168.0.1/goform/goform_set_cmd_process
