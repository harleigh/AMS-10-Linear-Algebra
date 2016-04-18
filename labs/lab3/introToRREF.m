%{
    Small function for defining a coefficient matrix A, forming the augmented
    matrix [A b], and then finding the reduced-row echalon form of [A b]
%}
clear all;
close all;

%coeff matrix
% A = [1 0 -3;
%      2 2  9;
%      0 1  5];
%  
% b = [8;7;-2];

A = [ 0 1 5;
      1 4 3;
      2 7 1];
  
b = [-4;-2;-2];

augMat = [A b];

rreffedAug = rref(augMat);
rreffedCoefMat = rref(A);

%
%   end
%