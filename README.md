# Beep

## 简介

这是一个蜂鸣器固件，执行后蜂鸣器间断式鸣叫。

## 环境与依赖

- 开发板

````
【迅为-ITOP-4412】
````

- 操作系统

````
Linux version 5.8.0-44-generic (buildd@lgw01-amd64-054) 
(gcc (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0, GNU ld (GNU Binutils for Ubuntu) 2.34) 
#50~20.04.1-Ubuntu SMP Wed Feb 10 21:07:30 UTC 2021
````

- 交叉编译工具
````
gcc-arm-none-eabi-10-2020-q4-major
````

## Build

linux命令行输入:

````
make
````

## 烧录执行

- 要求

要求外部存储设备已有Uboot，且能启动Uboot，并能通过ymodem传输文件

- 详细步骤

  ````
  01. 串口转USB线。一侧连ITOP4412，一侧连host的USB
  02. ITOP4412:接通电源
  03. host:命令行打开 minicom
  04. ITOP4412:开机复位
  05. ITOP4412:进入Uboot
  06. Uboot:输入命令 loady
  07. minicom：按 CTRL + A,Z 进入minicom命令菜单
  08. minicom:选择Send Files (S)
  09. minicom:选择ymodem
  10. minicom:选择led.bin
  11. minicom:确认发送
  12. Uboot:输入命令 go 0x40100000
  ````

