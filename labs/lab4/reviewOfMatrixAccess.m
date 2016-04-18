%{
    Review of accessing the elements of a matrix.  We populate a matrix with
    random integers, then access the data
          * Grab a single element of A
          * Grab a column of A
          * Grab a row of A
%}
clear all;
close all;


minRand = 0;
maxRand = 100;

numRows = 3;
numCols = 5;

%Populate a matrix (of size numRows by numCols) with random integers in a
%specified range
A = randi([minRand, maxRand], numRows, numCols);

%Access the first column of A
a1 = A(:,1);

%Access the first row of A
r1 = A(1,:);


%
%   end reviewOfMatrixAccess.m
%