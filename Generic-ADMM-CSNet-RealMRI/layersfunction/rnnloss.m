function Y = rnnloss(X, I,DzDy )
%NNLOSS: calculate the square error of restored image and original image
%   X: restored image of size MxM
%   I: original image of size MxM
%
config;
m = nnconfig.ImageSize ;
n = nnconfig.ImageSize ;
% X = double(X);
% I = double(I);
B=norm(I,'fro');

if nargin == 2
 S = X - I ;
 Y = norm(S,'fro') / B ;
elseif nargin ==3
 S = X - I ;
 Y1 = norm(S,'fro') ;   
 Y = S /(B*Y1);
else
    error('Input arguments number not proper.');
end;
end