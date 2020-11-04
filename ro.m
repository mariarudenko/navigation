function value=ro(rO,psiO,lambdaO,Omega,omega,i,w,tau,q,p,r)
%omega=0;
[XS,YS,ZS]=osc2eqRec(Omega,omega,i,w,tau,q,p,r);
[xO,yO,zO]=grSph2grRec(rO,psiO,lambdaO);
[xS,yS,zS]=eqRec2grRec(XS,YS,ZS,22,3,q,p);
value=sqrt((xO-xS)^2+(yO-yS)^2+(zO-zS)^2);