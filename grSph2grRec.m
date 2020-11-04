function [x,y,z]=grSph2grRec(r,psi,lambda)

x=r*cos(psi)*cos(lambda);
y=r*cos(psi)*sin(lambda);
z=r*sin(psi);