function rowA=azimuthDerivative(psiO,lambdaO,Omega,omega,i,w,tau,q,p,r)

[XS,YS,ZS]=osc2eqRec(Omega,omega,i,w,tau,q,p,r);
[xS,yS,zS]=eqRec2grRec(XS,YS,ZS,22,3,q,p);
[rS,psiS,lambdaS]=grRec2grSph(xS,yS,zS);

dzeta=acos(sin(psiO)*sin(psiS)+cos(psiO)*cos(psiS)*cos(lambdaO-lambdaS));
azimuth=acot(tan(psiS)*cos(psiO)*csc(lambdaO-lambdaS)-sin(psiO)*cot(lambdaO-lambdaS));

rowA(1)=sin(azimuth)*cot(dzeta);
rowA(2)=cos(psiO)*cos(azimuth)*cot(dzeta)-sin(psiO);