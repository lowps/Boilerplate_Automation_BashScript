#!/bin/bash
# -----------------------------------------------
# Script: boilerplate.sh
# Version: 1.0.0
# Description: Generates a Python project boilerplate
# Author: Erick Lopez
# Created: $(date +"%Y-%m-%d")
# -----------------------------------------------

#Accepts user input for directory name
read -p "Enter the name of your project directory: " project_name

#Create project directory
desktop_path="$HOME/Desktop/$project_name"
mkdir -p "$desktop_path"

#Create virtual environment
python3 -m venv "$desktop_path/venv"

#Create directory 'empirical'
mkdir -p "$desktop_path/empirical"


#create files 
touch "$desktop_path/requirements.txt"
touch "$desktop_path/README.md"

#Generate Dynamic Year within LICENSE
current_year=$(date +"%Y")

#Create MIT LICENSE 
cat <<EOF > "$desktop_path/LICENSE"
MIT License

Copyright (c) $current_year Erick Lopez

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

#Navigate into 'empirical'
cd "$desktop_path/empirical" || exit

#Create subdirectories
mkdir -p i_src ii_utils iii_logs iv_static v_notebooks a_data b_tests

#Define & setup python directory via package initializer 
touch i_src/__init__.py
touch ii_utils/__init__.py

#Navigate into 'a_data'
cd "$desktop_path/empirical/a_data" || exit

#Generate directories
mkdir -p raw processed versions final

#echo
echo "Boilerplate structure created at: $desktop_path"




