#!/bin/sh
gpg --list-keys
read -p "Enter the key to be used:" name
echo "$name"
python test1.py | gpg --encrypt --armor -r "$name"
