%{
    Convert an algebraic complex number a+b*i to polar (trig-form) returning the
    modulus (length) and argument

    Inputs:
        a and b:  scalar numbers of the algebraic-form of a complex number a+b*i
    Outputs
        modulus:  the length of the vector
        argument: The angle made from the positive real axis to the vector, in
        the range of [-pi,pi)
        
%}
function [ modulus, argument ] = convertAlgebraicToPolar( a, b )

    modulus = sqrt(a^2+b^2);
    
    %Make the argument between [-pi,pi)
    if( a*b>0 )  %quad 1 or 4
        argument = atan(b/a);
    elseif( a==0 ) %cornner cases
        argument = sign(b)*(pi/2);
    elseif( a<0 && b>0 ) % quad 2
        argument = pi + atan(b/a);
    else %quad 3: a<0 b<0
        argument = -pi + atan(b/a);
    end

end

