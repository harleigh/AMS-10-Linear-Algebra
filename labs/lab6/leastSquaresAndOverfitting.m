%{
    This script finds the least-squares fit from some data, and compares it to
    the method from last week, where we find a polynomial that goes through all
    of the points.  We will see that the method from last week (N data points,
    so use a N-1 polynomial) has a problem with over-fitting the data, and
    causing wiggles

    The data is a ball, dropped from an unknown height, with an unknown initial
    velocity.  The measurements are from some reference point.

    By physics, we are going to use a 2nd degree polynomial to fit the data.
%}

clear all;
close all;

%This is the original data:
% goodSimData = [  0.1     0.2     0.3    0.4      0.5   ;
%                 -0.18    0.31   1.03    2.48    3.73     ];

%Now try this data: Just by adding a few points, we see the problem with
%over-fitting.  Look at the over-fit curve: It doesn't make any physical sense,
%as our experiment is a ball falling
% goodSimData = [ 0.1  0.11  0.12    0.15   .2    0.25  0.3    0.4    0.5  ;
%                -0.18 -0.17 -0.16  -0.09  0.31   0.8  1.103  2.48    3.73  ];            

%This one blows up:
% goodSimData = [ 0.1  0.11  0.12   0.13     0.15   .2    0.25  0.3    0.4      0.5   ;
%                -0.18 -0.17 -0.16 -0.12  -0.09  0.31   0.8  1.103  2.48      3.73   ];            


%turn into column format: colum1 is wind and column2 is drag
goodSimData = goodSimData';

x = goodSimData(:,1);   %time of measurements
y = goodSimData(:,2);   %measured data
N = numel(x);           %number of measurements taken


V = getFittingPoly(x, N-1); %using exact-fitting from last week
M = getFittingPoly(x, 2);   %use a second degree poly as the fit

%Find the coefifients of the two polynomials: The old way and the least squares
%way
exactFitCoefs = V\y;
leastSquares = (M'*M)\eye(size(M'*M))*M'*y;


%partition up the domain (we want to graph the fitting polynomial)
dom = x(1):0.001:x(end);
dom = dom';

figure;
hold on;
    plot(x, y, '*');  %Graph Data Points
    plot(dom, getFittingPoly(dom, N-1)*exactFitCoefs); %graph soln from fitting every point
    plot(dom, getFittingPoly(dom, 2)*leastSquares); %graph soln from fitting every point
hold off;
grid on;
legend('Data Points', 'Exact Fit', 'Least Squares', 'Location', 'Best');
xlabel('Time (sec)');
ylabel('Distance (feet)');


%
%   end leastSquaresAndOverfitting.m
%
