%{
    Simple test scrip to test the calcTwoNorm function.  Showcases how to call a
    function, as well as how to compare two floating point solutions
%}

clear all;
close all;

%Tolerace for comparing two floating point numbers
TOL = 1e-6;

vec = [3;4];
matlabSoln = norm(vec, 2);
vectorizedSoln = sum(vec.^2).^(1/2);
res = calcTwoNorm(vec);

%Determine the error from our solution and matlabs solution
distFromMatlab = abs(res - matlabSoln);

if( distFromMatlab < TOL )
    disp('Good Coding!');
else
    disp('Error: Diference in solutions');
end

%
%   end testTwoNorm.m
%