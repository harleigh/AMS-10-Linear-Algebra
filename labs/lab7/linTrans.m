%{
    This script depicts how to manipulate an object in 2D using rotation and
    dilation matricies.
        We build a square and a triangle, and then apply transformations to each
        vertex.
%}
clear all;
close all;

squareVerts = [1 -1; 1 1; -1 1; -1 -1 ];
triangleVerts = [0 0 ; -1 -1; 1 -1];
squareVerts=squareVerts';
triangleVerts=triangleVerts';

rotMat2d = @(theta) [cos(theta) -sin(theta); sin(theta) cos(theta) ];
dialation = @(a,b) [a 0 ; 0 b];


rotSquareVerts = rotMat2d(pi/4)*squareVerts;
rotTriangleVerts = rotMat2d(pi/1.1)*triangleVerts;
flippedTriangleVerts = dialation(1,-1)*triangleVerts;   %flip on yAxis

patch(squareVerts(1,:), squareVerts(2,:), 'r');
patch(rotSquareVerts(1,:), rotSquareVerts(2,:), 'b');
axis([-5 5 -5 5]);
grid on;

figure;
    patch(triangleVerts(1,:), triangleVerts(2,:),'r');
    patch(rotTriangleVerts(1,:), rotTriangleVerts(2,:), 'b')
    patch(flippedTriangleVerts(1,:), flippedTriangleVerts(2,:), 'y')
    axis([-5 5 -5 5]);
    
    
%
%   end linTrans.m
%