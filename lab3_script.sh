#!/bin/bash
# Authors: Tri Bui
# Date: Feb/7/20

echo "Enter the file name"
read varName
echo "Enter the regular expression"
read varReg

grep $varReg $varName

echo "Count for phone number is" 
egrep -c '[0-9]{3}-[0-9]{3}-[0-9]{4}' regex_practice.txt

echo "count for email is"
egrep -c '@........' regex_practice.txt

echo "Phone number 303 code"
egrep -o '303-[0-9]{3}-[0-9]{4}' regex_practice.txt

echo "Email results with geocities"
grep '^[A-Za-z0-9._%+-]+@geocities.com$' regex_practice.txt >> email_result.txt 




