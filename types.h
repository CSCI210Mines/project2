#include <stdio.h>
#include <string.h>
#include <stdlib.h>

struct NODE {
    char name [64];
    char fileType;
    struct NODE* childPtr;
    struct NODE* siblingPtr;
    struct NODE* parentPtr;
};

void mkdir(char temp[]);
void rmdir(char temp[]);
void ls(char temp[]);
void cd(char temp[]);
void pwd();
void touch(char temp[]);
void rm(char temp[]);
void menu();
void printTree();
void printHelper(struct NODE *directory, int depth);
int quit();

struct NODE* splitPath(char* pathName, char* baseName, char* dirName);
