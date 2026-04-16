#!/usr/bin/bash

echo "--$(date)--" >> /home/exe/system_report.txt
df -h >> /home/exe/system_report.txt
free -h >> /home/exe/system_report.txt

grep -i "error" /home/exe/documents/error.txt >> /home/exe/system_report.txt

grep -ic "error" /home/exe/documents/error.txt >> /home/exe/system_report.txt





