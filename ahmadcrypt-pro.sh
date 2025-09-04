#!/data/data/com.termux/files/usr/bin/bash

clear
echo "🔐 AhmadCrypt Pro 🔐"
echo "---------------------"
echo "1) رمزنگاری متن"
echo "2) رمزگشایی متن"
echo "3) خروج"
echo "---------------------"
read -p "انتخاب شما: " choice

if [ "$choice" == "1" ]; then
    read -p "متن برای رمزنگاری: " input
    read -p "رمز عبور: " pass
    echo "$input" | openssl enc -aes-256-cbc -a -salt -pass pass:"$pass"
elif [ "$choice" == "2" ]; then
    read -p "متن رمزنگاری‌شده: " encoded
    read -p "رمز عبور: " pass
    echo "$encoded" | openssl enc -aes-256-cbc -a -d -pass pass
