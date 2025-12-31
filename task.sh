#!/bin/bash
echo "===== Task Script Started ====="

whoami
pwd
ls -la

mkdir -p demo_folder/subfolder
touch demo_folder/file1.txt
touch demo_folder/file2.txt
cp demo_folder/file1.txt demo_folder/file1_copy.txt

echo "This is sample text" > demo_folder/readme.txt
cat demo_folder/readme.txt
grep "sample" demo_folder/readme.txt
find demo_folder -name "*.txt"

echo "===== Task Script Completed ====="
