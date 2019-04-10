function [ O, O2 ,DzDw ] = betaorg( I1, I2, gamma, DzDy1,DzDy2, DzDy3  )

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ǰ�򴫲�
if nargin == 3  
    
   O = gamma * (I1 - I2 ) ;

end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%���򴫲�
if nargin ==6
    DzDy = DzDy1 + DzDy2 +DzDy3;
  
    O = gamma * DzDy ;
    O2 = -O ;
    temp = I1 - I2;
    DzDw  =DzDy(:)'* temp(:) ;
   
end


end

