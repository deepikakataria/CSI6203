#!/bin/bash
grep -r sed
#This command is used to search all sed statements
grep -r '^m'
#This command is used to search all lines that start with the letter m
grep -r '[0-9][0-9][0-9]'
#This command is used to search all lines that contains three digit number
grep -r '^[a,e,i,o,u]'
#This command is used to search all lines that start with a vowel
grep -r '.*(.*)'
#This command is used to search all line that contain loop
grep -r 'echo "[.*][.*][.*].*"'
#This command is used to search  all lines that contains echo statements with at least three words
