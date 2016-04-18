%{
    We've seen how to access data from a matrix, as well as how to produce
    operations upon row and column vectors in a componentwise manner.  This
    script just re-iterates those points, using a few interesting examples.
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

%Allocate some matrices to showcase various actions on matrix rows and columns
B = zeros(numRows, numCols);
C = zeros(numRows, numCols);
D = zeros(numRows, numCols);
E = zeros(numRows, numCols);

%scalar value
k=3;

%build a column vector of dimension numRows by 1
x = k*ones(numRows,1);

%build a row vector of numCols by 1
y = ones(1,numCols);

%Using a for loop apply the row vec x to the rows of A using various operations,
%storing the results in different matrices so they may be viewed later
for j=1:numCols
    B(:,j) = A(:,j) + x;
    C(:,j) = A(:,j).*x;
end


%Using a for loop apply the row vec x to the rows of A using various operations,
%storing the results in different matrices so they may be viewed later
for i=1:numRows
    D(i,:) = A(i,:)+y;
    E(i,:) = A(i,:).*y;
end



%
%   end capstoneReviewMatrices.m
%