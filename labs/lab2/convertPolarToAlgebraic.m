%{
    Given the modulus (r) and argument (theta) of a complex number z, return the
    algebraic representation to the polar number a=Re(z)= r*cos(theta) and
    b=Im(z)=r*sin(theta)

    Inputs:
        modulus 1 by 1 scalar
        myArg 1 by 1 scalar
    Outputs:
        a, b: scalars which represent the real and imaginary components of a
        complex number respectivly
%}
function [ a, b] = convertPolarToAlgebraic( r, myArg )

    a = r*cos(myArg);
    b = r*sin(myArg);

end

