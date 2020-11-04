function a=giveRowA(ro,rO,psiO,lambdaO,Omega,omega,i,w,tau,q,p,r)
% строчка матрицы A
[XS,YS,ZS]=osc2eqRec(Omega,omega,i,w,tau,q,p,r);
[xS,yS,zS]=eqRec2grRec(XS,YS,ZS,22,3,q,p);

a(1)=(rO/ro)*(xS*cos(lambdaO)*sin(psiO)+yS*sin(lambdaO)*sin(psiO)-zS*cos(psiO));
a(2)=(rO/ro)*cos(psiO)*(xS*sin(lambdaO)-yS*cos(lambdaO));
