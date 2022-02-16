#!/bin/bash

##
# @Author: yansixing
# @Date: 2022-02-16 10:11:30
# @Github: https://github.com/yansixing
# @LastEditTime: 2022-02-16 10:11:30
###

dir=$(
    cd $(dirname $0)
    pwd
)
echo $dir

hooksDir=$dir/.git/hooks

if [ ! -d $hooksDir ]; then
    echo "\033[31m请确认当前路径是否为git仓库: $dir\033[0m"
    exit 0
fi

curl -fsSL https://raw.githubusercontent.com/yansixing/JoJoGitHooks/main/commit-msg >$hooksDir/commit-msg
echo "\033[32m保存$dir/commit-msg hooks成功1\033[0m"

if [ $# -ne 0 ]; then
    funcname="$1"
    shift 1
    $funcname "$@"
fi

date
