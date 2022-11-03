#!/bin/sh

if [ -e $1 ]
then
  break
else
  mkdir $1
fi
cd $1
for ((i = 0; i < 5; i++)); do
  touch files$i.txt
done

mkdir filesdir
tar -cvf filesdir/files.tar files0.txt files1.txt files2.txt files3.txt files4.txt 
cd filesdir
tar -xvf files.tar 
exit 0
