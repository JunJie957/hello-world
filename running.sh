#!/bin/bash

# 预处理：加入头文件，替换宏
gcc hello.cc -E -o hello.i

# 编译：包含预处理，将程序转换成汇编程序
gcc hello.cc -S -c -o hello.s

# 汇编：包含预处理和编译，将汇编程序转换成可链接的二进制程序
gcc hello.cc -c -o hello.o

# 链接：包含以上所有操作，将可链接的二进制程序和其它别的库链接在一起，形成可执行的程序文件
gcc hello.cc -o hello

# 反汇编
objdump -d hello > 	hello.dump
