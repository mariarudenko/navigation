function bool=visibilityTest(psiO,lambdaO,rO,Omega,tau,i,w,rS,wE)
%условие видимости для общего случая

% omega=0; q=9;p=1:30;
rE=6300; %радиус Земли
[xO,yO,zO]=grSph2grRec(rO,psiO,lambdaO);

for j=1:30
    [XS,YS,ZS]=osc2eqRec(Omega,0,i,w,tau,9,j,rS);
    [xS,yS,zS]=eqRec2grRec(XS,YS,ZS,22,3,9,j,wE);
    scalProd(j)=(xO-xS)*xO+(yO-yS)*yO+(zO-zS)*zO;
    if sqrt(1-(rE/rO)^2)>scalProd(j)/(abs(rO)*abs(rO-rS))
        bool(j)=1;
    else
        bool(j)=0;
    end
end



