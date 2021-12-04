#!/bin/sh

. Shell/demo2.sh

thisIsFunction "??"

exit

echo<'Shell/1.txt' >> Shell/1.txt
exit;

res=$[1+2]
echo $res

exit;

num1=100
num2=100
if test $num1 -eq $num2
then
    echo '两个数相等！'
else
    echo '两个数不相等！'
fi
exit;

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

val=`expr 2 + 2`
echo "两数之和为 : $val"