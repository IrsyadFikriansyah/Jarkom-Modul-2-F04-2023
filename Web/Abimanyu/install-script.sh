#!/bin/bash
  
apt-get update > /dev/null

# Check if nginx is installed
if dpkg -l | grep -q nginx; then
  echo "nginx is already installed."
else
  echo "nginx is not installed. Installing it now..."
  apt-get install nginx -y
  echo "nginx has been installed."
fi

# Check if php is installed
if dpkg -l | grep -q php; then
  echo "php is already installed."
else
  echo "php is not installed. Installing it now..."
  apt-get install php -y
  echo "php has been installed."
fi

# Check if php-fpm is installed
if dpkg -l | grep -q php-fpm; then
  echo "php-fpm is already installed."
else
  echo "php-fpm is not installed. Installing it now..."
  apt-get install php-fpm -y
  echo "php-fpm has been installed."
fi