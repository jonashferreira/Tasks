# tasks

TASK 1:

There's a lot of ways to do the same thing, so I decided to try 2 different ways to resolve the same problem.

Build instructions:

For both Task1 files 
 
  - give execution permission to the files using chmod +x task1*

Usage:

  - Just use ./task1.sh or ./task1.1.sh to execute the scripts

Description:

[task1.sh]

  -In this first version, the script tests if there's the shuf command installed. In negative case, the script tries to install using apt-get or yum the package that contains shuf command.
  - shuf command using -i option to define a range from 1 to 10 and -n option to define the quantity of numbers that must be generated.

[task1.1.sh]

  - In this version, the script generates 50 numbers from 1 to 10 using the command echo $(($RANDOM% 10+1)) and save them into an array called RNDNUM.
  - After that using tr to convert the spaces between the numbers from RNDNUM into new lines, and using that as argument to AWK command that select only the unique lines and to the end use tr again to convert the unique lines into spaces to save the numbers into a new array called UNIQNUM.

Known limitations / bugs

  [task1.sh]
  
  - If the command shuf isn't installed the script won't work, there's a verification and installation in the script, but if the Linux distribution doesn't use apt-get or yum, will be necessary to install manually the shuf, however, coreutils, package where shuf belongs, is commmon and that mustn't be a problem.
  - In case of needed, just install coreutils and the script will work.

  [task1.1.sh]
  
  - There's no known limitation or bugs in this script.
