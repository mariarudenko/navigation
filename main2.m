Omega=deg2rad(60); tau=10; rS=7500; i=deg2rad(90); w=deg2rad(3); omega=0;
q=0;
for j=1:12
    [X(j),Y(j),Z(j)]=osc2eqRec(Omega,omega,i,w,tau,q,1+(j-1)*5,rS)
end

l1=[X(1);Y(1);Z(1);X(2);Y(2);Z(2)];
l2=[X(2);Y(2);Z(2);X(3);Y(3);Z(3)];
l3=[X(3);Y(3);Z(3);X(4);Y(4);Z(4)];
l4=[X(4);Y(4);Z(4);X(5);Y(5);Z(5)];
l5=[X(5);Y(5);Z(5);X(6);Y(6);Z(6)];
l6=[X(6);Y(6);Z(6);X(7);Y(7);Z(7)];
l7=[X(7);Y(7);Z(7);X(8);Y(8);Z(8)];

F1=[l1,l2,l3,l4,l5,l6];
F2=[l2,l3,l4,l5,l6,l7];
S=F2*inv(F1);
F3=S*F2;
Xiz=F3(4,6)
Yiz=F3(5,6)
Ziz=F3(6,6)