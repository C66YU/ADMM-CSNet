function [ O, O2 ] = Add( I1, I2, DzDy1, DzDy2 )

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ǰ�򴫲�
if nargin == 2  
     O = I1 + I2  ;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%���򴫲�
if nargin ==4
    DzDy = DzDy1 + DzDy2  ;
    O = DzDy;
    O2 = O ;
    
    
end


end

