%{
    Introduction to one-dimensional for loops:  We populate a row vector with
    random integers, and iterate through them, displaying the values to the
    console.
%}

clear all;
close all;

%parameters to the randi function (so we avoid 'literal' values).  Giving them
%names makes code easier to read and manage.
minRand = -100;
maxRand = 100;
numRows = 1;
numCols = 10;

%populate a vector of size numRows by numCols
a = randi([minRand, maxRand], numRows, numCols);

%Iterate through the list of numbers, displaying them to the console
for i=1:2:numCols
    disp(  num2str(a(i))  );
end

%
%   end oneDimForLoop.m
%