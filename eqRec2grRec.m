function [x,y,z]=eqRec2grRec(X,Y,Z,m,l,q,p)

% m - число,l - мес€ц, q - часы, p - минуты

wE=deg2rad(0.25);
a=[30,28,31,30,31,30,31,31,30,31,30,31];
k=sum(a(1,1:l-1))+m;
n=mod(k-81,365);
S=n*(365/365.25);
t=60*q+p;
gamma=S+wE*t;

A=[cos(gamma), -sin(gamma),0; sin(gamma), cos(gamma), 0; 0, 0, 1];
A=A';
grRec=A*[X;Y;Z];
x=grRec(1); y=grRec(2); z=grRec(3);