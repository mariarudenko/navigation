ro1=7525;
ro2=8922;
rS1=10000; psiS1=deg2rad(45); lambdaS1=deg2rad(30);
rS2=10000; psiS2=deg2rad(30); lambdaS2=deg2rad(60);
rO=6300; psiO=deg2rad(0); lambdaO=deg2rad(0);

[xS1,yS1,zS1]=grSph2grRec(rS1,psiS1,lambdaS1);
[xS2,yS2,zS2]=grSph2grRec(rS2,psiS2,lambdaS2);
[xO,yO,zO]=grSph2grRec(rO,psiO,lambdaO);
ro10=sqrt((xO-xS1)^2+(yO-yS1)^2+(zO-zS1)^2);
ro20=sqrt((xO-xS2)^2+(yO-yS2)^2+(zO-zS2)^2);

a11=(rO/ro10)*(xS1*cos(lambdaO)*sin(psiO)+yS1*sin(lambdaO)*sin(psiO)-zS1*cos(psiO));
a12=(rO/ro10)*cos(psiO)*(xS1*sin(lambdaO)-yS1*cos(lambdaO));
a21=(rO/ro20)*(xS2*cos(lambdaO)*sin(psiO)+yS2*sin(lambdaO)*sin(psiO)-zS2*cos(psiO));
a22=(rO/ro20)*cos(psiO)*(xS2*sin(lambdaO)-yS2*cos(lambdaO));
A=[a11 a12;a21 a22];

delta=inv(A)*[ro1-ro10;ro2-ro20];
deltaPsi=delta(1);
deltaLambda=delta(2);