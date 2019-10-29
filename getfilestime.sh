#!/bin/sh 
#kl+符号#!用来告诉系统它后面的参数是用来执行该文件的程序。在这个例子中我们使用/bin/sh来执行程序。

#origal from here
# License: Creative Commons Attribution 3.0 United States
# (CC by 3.0 US)

##########
# walk back to the project parent or the relative pathnames don't make
# sense
##########
while [ ! -d ./.git ]
do
    cd ..
done
echo "cd $(pwd)"
##########
# Note that the date format is ISO so that touch will work
##########
git ls-tree -r --full-tree HEAD |\
    sed -e "s/.*\t//" | while read filename; do
    echo "touch --date=\"$(git log -1 --date=iso --format="%ad" -- "$filename")\" -m $filename" 
done
