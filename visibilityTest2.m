function bool=visibilityTest2(Omega1,tau1,i1,w1,rS1,Omega2,tau2,i2,w2,rS2)
%условие видимости для общего случая

% omega=0; q=9;p=1:30;
rE=6300; %радиус Земли

for j=1:60
    [XS1,YS1,ZS1]=osc2eqRec(Omega1,0,i1,w1,tau1,9,j,rS1);
    [XS2,YS2,ZS2]=osc2eqRec(Omega2,0,i2,w2,tau2,9,j,rS2);
    [xS1,yS1,zS1]=eqRec2grRec(XS1,YS1,ZS1,22,3,9,j);
    [xS2,yS2,zS2]=eqRec2grRec(XS2,YS2,ZS2,22,3,9,j);
    scalProd(j)=(xS1-xS2)*xS1+(yS1-yS2)*yS1+(zS1-zS2)*zS1;
    if sqrt(1-(rE/rS1)^2)>scalProd(j)/(abs(rS1)*abs(rS1-rS2))
        bool(j)=1;
    else
        bool(j)=0;
    end
end