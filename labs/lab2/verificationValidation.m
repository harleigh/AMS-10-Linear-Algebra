%{
    A small script illustrating how to toy with complex numbers, and how to
    numerically find the roots of polynomials.
%}
clear all;
close all;


z1 = complex(2, -3);
z2 = complex(-1, 2);

prob1p1 = z1/z2;
prob2p2 = (z1+ z2)^3;
prob1p3 = (z1-conj(z2))^(-2);


%Roots: in decending order
poly8p2 = [1 1 8];
ans8p2 = roots(poly8p2);


%
%   end verificationValidation.m
%