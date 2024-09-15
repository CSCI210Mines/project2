# Project 2 - File Tree Simulator

In this project, you will be simulating a Unix file system using a tree. This is based off of section 2.13 in the textbook. Feel free to read that section from the textbook for additional help and ideas.

## Problem Statement

We have seen a lot of useful commands so far, such as: **mkdir**, **rmdir**, **ls**, **pwd**, and **cd**. As we begin to study C, it turns out that there is an interesting application of a data structure called a _tree_ which allows us to simulate these commands in code. Though this project is only in C, it will be a good review for your Unix knowledge. For simplicity, we won't be implementing flags on commands.

A tree is a data structure which you'll see in *Data Structures & Algorithms*, *Discrete Math*, and again in *Algorithms*. For more on trees and dynamic structures, refer to the course textbook sections 2.10-2.13 (Wang, Systems Programming in Unix/Linux). In this project, you are given a starter code, which provides type definitions and helper functions to help you work with trees.

Your task on this project is to implement the **mkdir** command which will modify a tree that simulates a Linux file system tree, where nodes represent files or directories.

**Important Notes**: In order to implement the **mkdir** command correctly, you will have to implement the two functions in the source file: **mkdir_splitpath.c**. **main.c** and **types.h** files should not me modified. The implementations of the other commands, **rmdir**, **rm**, **ls**, **cd**, **pwd**, and **touch** are provided as compiled object code in **other_commands.o**. For these commands to work correctly, the function **splitPath** has to be correctly implemented by you. More details about the expected behavior of these functions are provided below.

## Solution executable

A complete solution executable that have all the commands implemented is available: **main** and can be executed from the command line on isengard.

These fundamental commands function the same as in a standard linux terminal:

- cd: change directory, allows for the traversal between directories
- ls: list directory contents, displays files and directories within the current directory
- pwd: print working directory, shows the full path of the current directory.

## Requirements for the splitPath() function

- Implement the tokenizer using `strtok`: split strings based on delimiter ("/"); store tokens so that they can be used later in the program (splitting dirName and pathName for example)

## Requirements for the mkdir() function

To implement mkdir functionality
- Handle whether path is absolute or relative
	- Create a new directory node
	- Ensure that the directory node is properly connected (make sure it is the child/sibling of the proper node) and initialized. (fileType = 'D', childPtr = null, etc.)

## Input Format

Your program will take in input via stdin until the `quit` instruction is entered, in which case the program should end.

Your program will be tested with several inputs where each input is a sequence of commands separated by new lines.

## Output Format

Your **mkdir** implementation should print the following messages to stdout in the exact following format in each respective scenario:
```
MKDIR ERROR: directory <DIRECTORY> already exists
// or
MKDIR ERROR: no path provided
// or
MKDIR SUCCESS: node <NODE> successfully created
```

In addition, your **splitPath** implementation should print the following error message to the stdout in the exact following format when the path contains a reference to a non existing parent directory:
```
ERROR: directory <DIRECTORY> does not exist
```

## Sample Executions

### Sample Execution 1

Input
```
mkdir /a
mkdir /b
quit
```

Output
```
OUTPUT SUCCESS: node a created
OUTPUT SUCCESS: node b created
```

### Sample Execution 2

Input
```
mkdir /a/b
mkdir /a
mkdir /a/b
quit
```

Output
```
OUTPUT ERROR: subdirectory a on path does not exist
OUTPUT SUCCESS: node a created
OUTPUT SUCCESS: node b created
```

### Sample Execution 3

Input
```
mkdir a/b
mkdir a
mkdir a/b
quit
```

Output
```
FAIL - Directory a does not exist
SUCCESS - Node a successfully created
SUCCESS - Node a/b successfully created
```

### Sample Execution 4

Input
```
mkdir a
mkdir b
quit
```

Output
```
SUCCESS - Node a successfully created
SUCCESS - Node b successfully created
```
