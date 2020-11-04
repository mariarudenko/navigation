function [R,Psi,Lambda]=eqRec2eqSph(X,Y,Z)

R=sqrt(X^2+Y^2+Z^2);
Psi=asin(Z/(sqrt(X^2+Y^2+Z^2)));

if Y>0 && X>0
    Lambda=atan(Y/X);
elseif Y>0 && X==0
    Lambda=pi/2;
elseif Y<0 && X==0
    Lambda=3*pi/2;   
elseif Y==0 && X>0
    Lambda=0;
elseif Y==0 && X<0
    Lambda=pi;
elseif Y>0 && X<0
    Lambda=pi-atan(Y/X);
elseif Y<0 && X<0
    Lambda=pi+atan(Y/X);
elseif Y<0 && X>0
    Lambda=2*pi-atan(Y/X);
end