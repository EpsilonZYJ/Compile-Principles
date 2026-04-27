#!/bin/bash

# 请用 gcc 编译器，连编def-test.c, alibaba.c，生成def-test二进制可执行代码。通过在编译命令行加适当的参数，
# 使生成的程序能形成Alibaba和Bili两个人的对话：

# 预处理
gcc -E -D BILIBILI def-test.c -o def-test.i
gcc -E -D BILIBILI alibaba.c -o alibaba.i

# 编译
gcc -S def-test.i -o def-test.s
gcc -S alibaba.i -o alibaba.s

# 汇编与链接
gcc def-test.s alibaba.s -o def-test