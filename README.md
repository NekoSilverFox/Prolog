<div align="center">
<p>
 <img width="100px" src="https://raw.githubusercontent.com/NekoSilverFox/NekoSilverfox/403ab045b7d9adeaaf8186c451af7243f5d8f46d/icons/silverfox.svg" align="center" alt="NekoSilverfox" />
 <p align="center"><b><font size=6>Prolog</font></b></p>
 <p align="center"><b>函数及逻辑式编程</b></p>
</p>



[![License](https://img.shields.io/badge/license-MIT-brightgreen)](LICENSE)



<div align="left">
<!-- 顶部至此截止 -->




[toc]



# 简介

## 安装

>  基于 MacOS 环境
>
> https://www.swi-prolog.org/pldoc/man?section=quickstart

**安装：**

```bash
brew install swi-prolog
```



**命令行中启动：**

```
swipl
```



**导入一个pl文件：**

```
[不带pl的文件名].
```





**退出：**

```
halt.
```





# 类型及函数

注释：`%`

## 类型

| 名称             | 定义                                                         | 举例                |
| ---------------- | ------------------------------------------------------------ | ------------------- |
| 变量（variable） | 开头字母为**大写**或者下划线`_`。通过 `var(X).` 函数可以判断它是不是变量 | X, X123, X_X, _asd  |
| 常数（constant） | 开头为**数字、小写字母或者其他符号**，或者单引号`' '`包裹的字符串。通过 `atom(a).`函数可以判断是否为常数 | a, 123, a123, -a123 |
|                  |                                                              |                     |
|                  |                                                              |                     |

## 逻辑含义

| 符号         | 含义                  |
| ------------ | --------------------- |
| `,`          | and                   |
| `.`          | or                    |
| `:-`         | imply                 |
| `!`          | cut                   |
| `\==`        | 不等于                |
| `+ - * / **` | 加减乘除，`X is 2**3` |



## 函数

| 函数名                                                       | 描述                                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `var(X).`                                                    | 判断 X 是不是变量                                            |
| `atom(a).`                                                   | 判断是否为常数                                               |
| `integer(123).`                                              | 判断是否为整形                                               |
| `float(12.3).`                                               | 判断是否为浮点                                               |
| `random(起始值, 结束值, 变量).`                              | 随机生成一个随机数并把它赋值给变量，比如：`random(0, 9, X).` |
| `between(起始值, 结束值, 变量).`                             | 打印起始值到结束值之间的所有值，使用 `;` 可以打印下一个，类似于 Python 的 Range |
| `succ(NUMBER, X).`                                           | NUMBER 之后是谁，比如 `succ(2, X).`，X = 3                   |
| `abs(NUMBER, X).`或者 `X = abs(NUMBER)` 或者 `X is abs(NUMBER)` | 绝对值                                                       |
| `X is max(NUMBER, NUMBER).` `min(NUMBER, X).`                | 最大值，最小值                                               |
| `X is mod(被除数, 除数)`                                     | 取模                                                         |
| `round(浮点数, X).`                                          | 四舍五入取整                                                 |
| `ceiling(浮点数, X).`                                        | 向上取整                                                     |
| `floor(浮点数, X).`                                          | 向下取整                                                     |
| `truncate(浮点数, X).`                                       | 截取整数部分                                                 |



**自定义函数：**

格式：`functor(arguments)`



**函数的意义：**

```prolog
parent(tina, X). % tina 是哪些人的家长，由于 X 是变量，所以它将返回所有可能的答案

parent(tina, william).  % tina 是不是 william 的家长。返回 true 或者 false
```





## 规则(Rule)

是一种逻辑上的结合，使用：`:-` 来定义。比如“母亲 mother” 的定义：

- X 要是 Y 的家长
- 并且 X 要是女性

```java
mother(X, Y):-
  parent(X, Y),
	woman(X).
```



## Debug

使用 `trace.` 可以展示下一个命令的搜寻过程
