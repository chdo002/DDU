#!/bin/sh
a=1
b=1
c=12
# val=`expr $a + $b`
if [ $a -eq 1 -a $b -lt 10 -a $c -gt 12 ];then
echo "bb2"
else 
echo "aa1"
fi

exit;

arr=(1 1 1)
echo "数组长度${#arr[@]}"

my_array=(A B "C" D)

echo "第一个元素为: ${my_array[0]}"
echo "第二个元素为: ${my_array[1]}"
echo "第三个元素为: ${my_array[2]}"
echo "第四个元素为: ${my_array[3]}"