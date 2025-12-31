#!/bin/bash
echo "===== Cleanup Script Started ====="

rm -f demo_folder/file1.txt
rm -f demo_folder/file1_copy.txt
rm -f demo_folder/file2.txt
rm -f demo_folder/readme.txt

rm -rf demo_folder/subfolder
rm -rf demo_folder

echo "===== Cleanup Script Completed ====="
