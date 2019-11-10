@echo off
set /p name="type the name of the folder you want to create?"
::set command is used to read input and to set the variables
cd ..
mkdir scratch
::This command is used for making directory named scratch 
cd scratch
::This command is used to change directory
type nul > %name% 
::This command is used for making a folder with a user given name which is set in a variable called name