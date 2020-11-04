function [X,Y,Z]=eqSph2eqRec(R,Psi,Lambda)

X=R*cos(Psi)*cos(Lambda);
Y=R*cos(Psi)*sin(Lambda);
Z=R*sin(Lambda);