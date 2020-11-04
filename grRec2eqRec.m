function [X,Y,Z]=grRec2eqRec(x,y,z,m,l,q,p)

% m - число,l - мес€ц, q - часы, p - минуты

wE=deg2rad(0.25);
a=[30,28,31,30,31,30,31,31,30,31,30,31];
k=sum(a(1,1:l-1))+m;
n=mod(k-81,365);
S=n*(365/365.25);
t=60*q+p;
gamma=S+wE*t;

A=[cos(gamma), -sin(gamma),0; sin(gamma), cos(gamma), 0; 0, 0, 1];
eqRec=A*[x;y;z];
X=eqRec(1); Y=eqRec(2); Z=eqRec(3);