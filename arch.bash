#!/usr/bin/bash

# setting up variables from config file
return_dir=$PWD
echo $return_dir
echo

# starting directory for site
echo "Creating Virtual Environment..."
mkdir $1
python3 -m venv $1

# setting up django
echo "Installing Django..."
cd ./$1
source bin/activate  # connecting to venv
pip install django  # error correct/if no internet?
echo

# creating django site
echo "Creating Site Directory..."
mkdir $1
cd ./$1
django-admin startproject main_branch .


# get config info
echo "Returning to Script Directory..."
cd $return_dir

# creating apps based on config file


