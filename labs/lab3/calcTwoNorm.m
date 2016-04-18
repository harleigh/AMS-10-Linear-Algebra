%{
    Find the two norm of a vector
    
    Inputs:
        x: a 1 by N column vector (although the code works for a N by 1 row
           vector)

    Output:
        tot: a 1by1 (scalar) number representing the two-norm of the input-ed
        vector
%}
function [ tot ] = calcTwoNorm( x )

    %Variable that will keep a running total 
    tot=0;
    
    %Determines the number of elements in the vector x
    N = numel(x);
    
    for i=1:N
        tot = tot + x(i)^2;
    end
    
    %After the for loop, tot = x(1)^2 + ... + x(N)^2, so to get the two norm, we
    %just find the square root of tot
    tot = sqrt(tot);
end

