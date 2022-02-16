#!/bin/bash

##
# @Author: yansixing
# @Date: 2022-02-16 10:25:56
# @Github: https://github.com/yansixing
# @LastEditTime: 2022-02-16 10:25:56
###

dir=$(
    cd $(dirname $0)
    pwd
)
echo $dir

# fix Git hooks doesn't work on Source Tree
# reference: https://stackoverflow.com/questions/51074821/git-hooks-doesnt-work-on-source-tree
echo "\nexport PATH=/usr/local/bin:\$PATH" >>~/.bash_profile
source ~/.bash_profile

if [ $# -ne 0 ]; then
    funcname="$1"
    shift 1
    $funcname "$@"
fi

date
