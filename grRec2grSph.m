function [r,psi,lambda]=grRec2grSph(x,y,z)

r=sqrt(x^2+y^2+z^2);
psi=asin(z/(sqrt(x^2+y^2+z^2)));

if y>0 && x>0
    lambda=atan(y/x);
elseif y>0 && x==0
    lambda=pi/2;
elseif y<0 && x==0
    lambda=3*pi/2;   
elseif y==0 && x>0
    lambda=0;
elseif y==0 && x<0
    lambda=pi;
elseif y>0 && x<0
    lambda=pi-atan(y/x);
elseif y<0 && x<0
    lambda=pi+atan(y/x);
elseif y<0 && x>0
    lambda=2*pi-atan(y/x);
end
    
    