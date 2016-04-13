%{
    calcFactorial: Given a scalar (number) n, return n!

    Inputs:
        n   1by1 (scalar) number which (should be greater than or equal to 0)
    Outputs:
        res  1by1 number representing the factorial of the given input
%}
function [ res ] = calcFactorial( n )

    %Set res to one (this may be a redundant comment; but some are learning a
    %language for the first time
    res = 1;
    
    %Build the factorial.  We start at two since 0!=1!= 1
    for i=2:n
        res = res*i;
    end
    
end

