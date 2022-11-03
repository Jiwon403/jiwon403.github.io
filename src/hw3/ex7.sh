#!/bin/sh

mkdir $1
cd $1
for ((i = 0; i < 5; i++)); do 
  touch file$i.txt
  mkdir file$i
  cd file$i 
  ln -s file$i.txt file$i.txt
  cd ..
done
exit 0 
