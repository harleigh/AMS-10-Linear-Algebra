%{
    A small script which fits a fifth degree polynomial to a given set of six
    data points.    
%}

clear all;
close all;


%Our simulation data, row1 is wind and row2 is drag
simData = [0   2     4   6     8    10;
           0  2.9  14.8 39.6  74.3  119 ];
       
%turn into column format: colum1 is wind and column2 is drag
simData = simData';

%This is an anonymous function 
p = @(t) [ t.^0 t t.^2 t.^3 t.^4 t.^5];

%Build the Vandermonde matrix
A = p(simData(:,1));
b = simData(:,2);

%We want to solve the system Ax=b.  We show three different ways of doing so:
%One using rreff, and the other three using the inverse of A
res1 = rref([A b]);
res2 = A\b;         %In matlab, you should invert matrices using \
res3 = inv(A)*b;    %Matlab complains about using the inv function
res4 = A^(-1)*b;    %Another interesting way to calculate the inverse

%Evaluate the polynomial at 7.5: p(7.5) returns a 1by5 matrix, and res2 is a
%5by1 matrix of the coefficients.  This code calculates
%a_0+a_1t+a_2t^2+...+a_5t^5
ourAnswer = p(7.5)*res2;

%This is because we want to graph the polynomial
dom = simData(1,1):0.001:simData(end,1);
dom = dom';

%{
    Just for fun, draw the sim-points as well as the polynomial
%}
figure;
hold on;
    plot(simData(:,1), simData(:,2), '*');
    plot(dom, p(dom)*res2, '-r');
hold off;
grid on;
xlabel('Wind');
ylabel('Drag');

%
%   end polyFit.m
%