# SysY Compiler Learning Project

一个基于 Makefile / Flex / Bison 的 SysY 编译器学习项目。当前仓库保留了编译器实验的基础工程结构，用于理解编译器前端、构建流程和评测平台要求。

> Status: Work in progress. 当前代码仍处于实验 scaffold 阶段，不代表完整 SysY 编译器实现。

## Project Structure

```text
.
├── Makefile        # 构建入口，支持评测平台传入 BUILD_DIR / LIB_DIR / INC_DIR
├── src/
│   ├── main.cpp    # 当前主程序，占位生成 Koopa/RISC-V 风格输出
│   ├── sysy.l      # Flex lexer scaffold
│   └── sysy.y      # Bison parser scaffold
└── README.md
```

## What This Repo Is For

- 熟悉 SysY 编译器实验的仓库结构。
- 练习 Makefile、Flex、Bison 的协作方式。
- 理解评测平台对 `compiler` 可执行文件、构建参数和输出目录的要求。
- 为后续实现词法分析、语法分析、AST、IR 生成和目标代码生成预留工程基础。

## Build

在配置好实验环境后，执行：

```bash
make
```

默认会生成：

```text
build/compiler
```

清理构建产物：

```bash
make clean
```

## Judge-Compatible Build

评测脚本通常会通过类似命令编译：

```bash
make DEBUG=0 BUILD_DIR="build目录" LIB_DIR="libkoopa目录" INC_DIR="libkoopa头文件目录" -C "repo目录"
```

本仓库的 `Makefile` 会根据 `BUILD_DIR` 输出 `compiler`，并处理 `LIB_DIR`、`INC_DIR` 与 `libkoopa` 链接参数。

## Current Implementation

当前 `src/main.cpp` 会根据命令行模式参数输出最小的占位代码：

- `-koopa`：输出最小 Koopa IR 示例。
- `-riscv` / `-perf`：输出最小 RISC-V 示例。

后续可继续补充：

- lexer token 规则
- parser grammar
- AST 数据结构
- 语义检查
- Koopa IR 生成
- RISC-V 目标代码生成

## Notes

该仓库源自 SysY 编译器实验模板的工程结构整理，README 已改写为个人学习项目说明。后续实现进度会以提交记录和 `src/` 内容为准。
