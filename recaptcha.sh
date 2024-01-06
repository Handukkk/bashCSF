#!/bin/bash

echo "Welcome to reCAPTCHA simulation! :D"
getCaptcha=$(openssl rand -hex 3)

echo "Please input this: $getCaptcha"
read -p "Please input the CAPTCHA: " getInput

if [ "$getCaptcha"  == "$getInput" ]; then
	echo "reCAPTCHA verification successful!"
else
	echo "reCAPTCHA verification failed!"
fi

echo "exiting...."
