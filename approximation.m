ro1=ro(r,psi,lambda,OmegaGPS(1),0,iGPS,wGPS,tauGPS(1),10,14,rGPS);
ro2=ro(r,psi,lambda,OmegaGPS(6),0,iGPS,wGPS,tauGPS(6),9,17,rGPS);
count=0;
while count<500
    count=count+1;
    ro10=ro(rO,psiO,lambdaO,OmegaGPS(1),0,iGPS,wGPS,tauGPS(1),10,14,rGPS);
    ro20=ro(rO,psiO,lambdaO,OmegaGPS(6),0,iGPS,wGPS,tauGPS(6),9,17,rGPS);
    
    a1=giveRowA(ro10,rO,psiO,lambdaO,OmegaGPS(1),0,iGPS,wGPS,tauGPS(1),10,14,rGPS);
    a2=giveRowA(ro20,rO,psiO,lambdaO,OmegaGPS(6),0,iGPS,wGPS,tauGPS(6),9,17,rGPS);
    A=[a1;a2];

    delta=inv(A)*([ro1-ro10;ro2-ro20]);
    deltaPsi=delta(1);
    deltaLambda=delta(2);
    psiO=psiO+deltaPsi
    lambdaO=lambdaO+deltaLambda
    d=abs(psi-psiO)+abs(lambda-lambdaO)
    
    a3=azimuthDerivative(psiO,lambdaO,OmegaGPS(4),0,iGPS,wGPS,tauGPS(4),9,14,rGPS);
    a4=azimuthDerivative(psiO,lambdaO,OmegaGPS(6),0,iGPS,wGPS,tauGPS(6),9,17,rGPS);
    A2=[a3;a4];
    delta=inv(A)*([ro1-ro10;ro2-ro20]);
    deltaPsi=delta(1);
    deltaLambda=delta(2);
    psiO=psiO+deltaPsi
    lambdaO=lambdaO+deltaLambda
    d=abs(psi-psiO)+abs(lambda-lambdaO)
 end
