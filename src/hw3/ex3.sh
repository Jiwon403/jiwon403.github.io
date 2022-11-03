#!/bin/bash
read n1 n2
n2=$(echo "scale=3; $n2 * $n2 / 10000" | bc)
n3=$(echo "scale=3; $n1 / $n2" | bc)

if ((`echo "$n3 > 23" | bc` == 1)); then
    echo "과체중입니다."
fi
if ((`echo "$n3 < 18.5" | bc` == 1)); then
    echo "저체중입니다."
fi
if ((`echo "$n3 < 23 && $n3 >= 18.5" | bc` == 1)); then
    echo "정상체중입니다."
fi
