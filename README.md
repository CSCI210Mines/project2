# Project 2 - File Tree Simulator

In this project, you will be simulating a Unix file system using a tree. This is based off of section 2.13 in the textbook. Feel free to read that section for additional help and ideas.

## Problem Statement

We have seen a lot of useful commands so far, such as: **mkdir**, **rmdir**, **ls**, and **cd**. As we begin to study C, it turns out that there is an interesting application of a data structure called a **tree** which allows us to simulate these commands in code. Though this project is only in C, it will be a good review for your Unix knowledge.

A tree is a data structure (more specifically, graphs) which you'll see in *Data Structures & Algorithms*, *Discrete Math*, and again in *Algorithms*.

Circles are "nodes" or "vertices", and have data associated with them, such as a name. Edges between nodes create parent-child relationships.

Your task on this project is to use a tree to simulate the **mkdir** command in Linux file system tree, where nodes represent files and directories along a path.

**Important Note**: For this project, we are **only** asking you to implement the **mkdir** command and the code to run it. You are **not** implementing any other commands, though that would be fun. ;)

## Input Format

Your program will take in input via stdin until the `quit` instruction is entered, in which case the program should end.

Input will be a string involving (perhaps erroneously - think of edge cases!) mkdir and paths.

## Output Format

Your code should print to stdout in the following formats, in each respective scenario:
```
OUTPUT ERROR: invalid command
// or
OUTPUT ERROR: directory <DIRECTORY> already exists
// or
OUTPUT ERROR: subdirectory <DIRECTORY> on path does not exist
// or
OUTPUT ERROR: no path provided
// or
OUTPUT SUCCESS: node <NODE> created
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

## Development Notes & Roadmap

## Part 1: Implement tokenizer (using strtok) and main (switch case and gets pathname if there is one)

### MAIN:
	- Switch case
	- FindCMD
	- Node struct 
	- Initialize Node

### TOKENIZER:
	- Split strings based on delimiter ("/")
	- Store tokens so that they can be used later in the program (splitting dirName and pathName for example)

## Part 2: Implement mkdir functionality
	- Handle whether path is absolute or relative
	- Create a new directory node
	- Ensure that the directory node is properly connected (make sure it is the child/sibling of the proper node) and initialized. (fileType = 'D', childPtr = null, etc.)

