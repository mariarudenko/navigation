function [X,Y,Z]=osc2eqRec(Omega,omega,i,w,tau,q,p,R)

t=60*q+p;
u=omega+w*(t-tau);
X=R*(cos(u)*cos(Omega)-sin(u)*sin(Omega)*cos(i));
Y=R*(cos(u)*sin(Omega)+sin(u)*cos(Omega)*cos(i));
Z=R*sin(i)*sin(u);