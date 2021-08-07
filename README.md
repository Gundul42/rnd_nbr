# rnd_nbr


This applikation generates n random numbers from -max to max without dublicates.
The numbers are separated by a space.


first compile with: gcc rnd.c -o rnd

Usage:

rnd "n numbers" "max value" "-1|0|1"

n numbers	= how many numbers you need
max value	= max possible value of a generated number
-1		= only negative numbers
0 or nothing	= mixed numbers
1		= only positive numbers
  
  rnd 10 1000 will generate 10 random numbers in the range of -1000 to 1000
  
  rnd 500 10000 will generate 500 random numbers in the range of -10000 to 10000

  rnd 500 10000 1 will generate 500 random numbers in the range of 0 to 10000

  rnd 500 2000 -1 will generate 500 random numbers in the range from 0 to -2000
  
  ...
  
  
Useage together with push_swap project:
  
  rnd 500 10000 | xargs push_swap
  
  
  
Please read the license:
  no garantees, no support, this was made for Linux.
