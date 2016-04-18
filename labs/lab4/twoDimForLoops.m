%{
    Intro to two-dim for loops.  Using 2d for loops, we access the data in a
    matrix.

    We do it in two ways:
        (i)   for each row, access each column
        (ii)  for each column, access each row

    the string s1 represents the order of how the data is accessed using (1)
    the string s2 represents the order of how the data is accessed using (2)

    After you run the script, look at A, then at s1 and s2, and learn how each
    of the 2d for loops iterate over the rows and columns.
%}
clear all;
close all;

minRand = 0;
maxRand = 100;

numRows = 3;
numCols = 4;

%Populate a matrix (of size numRows by numCols) with random integers in a
%specified range
A = randi([minRand, maxRand], numRows, numCols);

%Iterate over each column per row
s1='';
for i=1:numRows
    for j=1:numCols
        s1=horzcat(s1, num2str(A(i,j)), ' ');
    end
end

%Iterate over each row per column
s2='';
for j=1:numCols
    for i=1:numRows
        s2=horzcat(s2, num2str(A(i,j)), ' ');
    end
end

%
%   end twoDimForLoops
%