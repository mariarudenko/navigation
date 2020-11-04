function scalProd=visibility(psiO,lambdaO,rO,Omega,tau,i,w,r)
%условие видимости

% omega=0; q=9;p=1:30;
[xO,yO,zO]=grSph2grRec(rO,psiO,lambdaO);

for j=1:30
    [XS,YS,ZS]=osc2eqRec(Omega,0,i,w,tau,10,j,r);
    [xS,yS,zS]=eqRec2grRec(XS,YS,ZS,22,3,10,j);
    scalProd(j)=(xS-xO)*xO+(yS-yO)*yO+(zS-zO)*zO;
end




