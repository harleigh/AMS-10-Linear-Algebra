%{
    A script that tests the function which converts a polar representation to an
    algebraic representation.  Not nearly as interesting as the function which 
    converts algebraic to polar.  This one is the basic one that shows-off the
    idea of calling a function, and writing a function.

%}

clear all;
close all;

% Convert r=3 arg = -pi
modulus = 3;
argument = -pi;
[a, b] = convertPolarToAlgebraic(modulus,argument);

trueA = modulus*cos(argument);
trueB = modulus*sin(argument);


%
%   end testConvertPolarToAlgebraic.m
%