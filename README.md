# prolog-problems

q2.  Given a graph G and two nodes A and Z in G, write a program in Prolog or Lisp that finds an acyclic path  
P between A and Z. The path should be represented as an ordered list of nodes from the start node to   
the goal node. Since the path must be acyclic, a node can appear in the path only once.   

q3. Consider the following graph that has costs attached to its edges:

*see image in q3 folder

Write a program in Prolog or Lisp that given two nodes X and Y in the graph above will find the 
minimum-cost path from node X to node Y and display the found path and its cost. All data about the 
graph should be declared in the program.

Example: the minimum path between a and d is [a,b,c,d] with cost = 6.

q4. Write a Prolog/Lisp program that teaches children how to pronounce multisyllable words by dividing 
them into syllables. Limit your program to deal only with syllables of the following two sequences:
1. vowel–consonant–vowel: divide the word after the second vowel.
Example: analog ---> ana-log
2. vowel–consonant–consonant–vowel: divide the word between the two consonants.
Example: bumper ---> bum-per
