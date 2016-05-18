%{
    This returns the Vandermonde matrix up-to degree m

    Input:
        x: A column matrix containing time-nodes
        m: Degree of the fitting polynomial

    Output:
        [1 x x^2 x^3 ... x^m] matrix
%}
function [ M ] = getFittingPoly( x, m )

    M = zeros( numel(x), m+1 );
    
    for i=1:(m+1)
        M(:,i) = x.^(i-1);
    end
end

