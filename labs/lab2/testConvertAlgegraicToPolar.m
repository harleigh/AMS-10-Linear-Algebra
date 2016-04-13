%{

    This script showcases the most important bit about coding, and being a
    programmer: We need to test the function that we write.  So, in this
    example, we compare a numerical solution, to the analytical solution, and
    display 
%}

clear all;
close all;

%Tollerence used when comparing the analyitic solution to the actual solution.
TOL = 1e-5;

%The Algebraic Number under Question
a = 1;
b = sqrt(3);

[r, theta] = convertAlgebraicToPolar(a, b);

trueR = 2;
trueArgument = pi/3;

%how close were we to the true solutions.  Look at these values
diffR = abs(r - trueR);
diffArgument = abs(theta - trueArgument);

%Lastly, showcasing conditional statements, the following two statements will
%output success if the difference between the real and numerical solution are
%within a specified tollerenec.

if( diffR < TOL)
    disp('Modulus is correct');
else
    disp('Something went wrong with the Modulus');
end

if( diffArgument < TOL )
    disp('Argument is correct');
else
    disp('Something went wrong with the Argument');
end

%
%   end testConvertAlgegraicToPolar.m
%