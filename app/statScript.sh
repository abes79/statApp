#!/bin/bash
while true; do
  timestamp=$(date +%Y-%m-%d_%H:%M)
  rm ????-??-??_??:?? 2> /dev/null
  echo $timestamp 1> timestamp.txt
  echo 'Top 5 processes consuming most CPU' 1> $timestamp
  ps -aux --sort=-pcpu | head -n 6 1>> $timestamp
  echo '-------------------------------------------------------------' 1>> $timestamp
  echo 'Free disk space on the volume mounted to /' 1>> $timestamp
  df -h | grep " /$" 1>> $timestamp
  echo '-------------------------------------------------------------' 1>> $timestamp
  echo 'Total disk space taken by /var directory' 1>> $timestamp 
  du -sh /var 1>> $timestamp 2> /dev/null
  echo Data saved to file: $timestamp
  sleep 1m
done
