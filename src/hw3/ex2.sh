#!/bin/bash
read n1 s1 n2
if [ ${s1} == '+' ]; then
    echo `expr $n1 + $n2`
fi
if [ ${s1} == '-' ]; then
    echo `expr $n1 - $n2`
fi 
