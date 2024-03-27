# Project 2 - File Tree Simulator

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

