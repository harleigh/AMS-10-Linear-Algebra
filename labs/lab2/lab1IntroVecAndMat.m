%{
    AMS 10  Week 1, lab 1

    Introduction to Matlab/Octave

    Topics:
        Assigments and Comments
        Row and Column Vectors, transpose operator
        Matrices
        Indexing row col and matrices
        Complex Numbers

    Special Notes:  Not much, run this script and look at the variables in the
    workspace (if you're using the GUI) or display them on the command line if
    you are not using a GUI.

    Check this tutorial out:  http://www.cyclismo.org/tutorial/matlab/index.html
%}

%Single percent sign is a comment; always document your code.

%clear all variables before running the script, and close all figure-windows;
%Both of these should be at the top of each script you write.
clear all;
close all;


%Basic assignments in matlab
domStart = -2*pi;
domEnd = 2*pi;
step = 0.01;

%Initialization of a row vector, size 1 by 4 (one row, four columns)
a = [1 2 3 4];

%Making a column vector
b = [1;2;3;4];

%Apostrophy is a transpose operation (google transpose)
c = b';

%make a row vector from some starting point to some ending point, incrementing
%by some fixed step;
dom = domStart:step:domEnd;

%here is another way to make a vector, although I never enjoied this method as
%if you want a specific step, you need to do a bit of algebra.  This makes a
%size 100 vector starting at 1 and ending at 10
dom2= linspace(1, 10, 100);


%A coefficient matrix
A = [1 1 1;
     2 4 -3;
     3 6 -5];
%variable b has now been overwritten (but look at variable 'c', it hasn't
%changed
b = [9;1;0];  

%make an augmented matrix.
augMat = [A b];
%reduce row echalon the matrix
sysResult = rref(augMat);

%Basic indexing; matlab is a one-indexed language
a(1)
a(2:3)
a(end-1)

%Indexing a matrix, by element
    A(1,1)
    A(2,2)
    A(3,3)

%Grabbing rows or columns from a matrix; remember to use the command line to see
%what individual commands do
    A(:,2)
    A(2,:)

    
%This is the not-shoot-yorself-in-the-foot way of making a complex number.
%Granted we could have written z1 = sqrt(3)-i, but if you already assigned a
%value to i, matlab will just substitute the value of i rather than giving you a
%complex number
z1 = complex( sqrt(3),-1);
    
%shoot-yorself-in-the-foot way of making a complex number, z2 is not complex
%because we already used 'i'
i=10;
z2 = sqrt(3)-i;
%reference various commands for complex numbers: compass, abs, angle, etc.


%Some basics on plotting.  What is the figure doing there?  calling figure
%builds an empty window that the plot can draw into.  Comment-out the second
%'figure' command and see what happens.  Note, the indention is just a style I
%developed that is aesthetically pleasing to me
figure;
    plot( a, c, '-*');
    grid on;

figure;
    plot(dom, cos(dom));
    grid on;
    
%Want to draw the same thing on the graph?  There are a few ways
%first way, plot can take pairs of domain, range vectors
figure;
    plot( a, c, '-*', dom, cos(dom));
    grid on;
    
%Here is another way that is useful for printing on the fly.  The command hold
%on allows each call of plot to display on the same canvas.  The keyword hold
%off closes the canvas,
hold on;
     plot( a, c, '-*');
     plot( dom, cos(dom));
hold off;


%
% end lab1IntroVecAndMat
%