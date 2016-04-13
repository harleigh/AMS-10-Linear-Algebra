%{
    Altering the main diagonal of a matrix.  An interesting script where we show
    various ways of accessing the elements of the main-diagonal of a matrix.

    Harleigh Marsh April 11th 2016
%}

minRand = 0;
maxRand = 100;

numRows = 10;
numCols = 10;

%A is a square matrix (at the moment).  Matrices B and C are used to show
%different ways of accessing the main diagonal.
A = randi([minRand, maxRand], numRows, numCols);
B=A;
C=A;


%We can use a 1d for loop: Iterate over each element in the main diagonal,
%starting at top-left, and ending at lower-right
for i=1:numRows
    A(i,i)=-1;
end

%find returns all indicies which satisfy the conditional it's given (here return
%all incicies of the identitiy matrix which are greater than zero, which is
%exactly and only the main diagonal.  Then, Matlab can handle that vector and
%assign all of the indicies of A at once.  You see the warning?  Matlab
%complains to us that this operation may be slow.  So the next version is a
%faster way
B(find(eye(numRows)>0))=-1;

%Here I build a logical index of all of the main diagonal entries, and then
%use them to access the value stored in each of the main diagonal entries

%Logical locations of the main-diagonals
mainDiagAccess = 1:numRows+1:numRows*numCols;   
%In one fell-swoop, smack a -1 into all of the main diagonals
C(mainDiagAccess)=-1;

%
%   end accessMainDiagonal.m
%