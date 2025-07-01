#!/bin/bash
# repo in aosp may be newer, copy to the bin, it's the recommend update method by repo
cp /aosp/.repo/repo/repo /usr/bin/repo

# 执行你想要启动的程序
exec "$@"
