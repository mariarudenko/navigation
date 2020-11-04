OmegaTR(1)=30;
OmegaTR(2)=60;
OmegaTR(3)=120;
OmegaTR(4)=210;
OmegaTR(5)=270;
OmegaTR(6)=330;

tauTR(1)=40;
tauTR(2)=10;
tauTR(3)=100;
tauTR(4)=80;
tauTR(5)=50;
tauTR(6)=110;

rTR=7500;
iTR=90;
wTR=3;
omegaTR=0;

OmegaGPS(1)=0;
OmegaGPS(2)=45;
OmegaGPS(3)=90;
OmegaGPS(4)=135;
OmegaGPS(5)=210;
OmegaGPS(6)=300;

tauGPS(1)=30;
tauGPS(2)=100;
tauGPS(3)=70;
tauGPS(4)=0;
tauGPS(5)=150;
tauGPS(6)=120;

rGPS=15000;
iGPS=60;
wGPS=2;
omegaGPS=0;

rO=6300;
psiO=30;
lambdaO=30;%координаты объекта, счислимое место
r=6300;
psi=33;
lambda=28;%искомое положение объекта

lambdaO=deg2rad(lambdaO);
psiO=deg2rad(psiO);
lambda=deg2rad(lambda);
psi=deg2rad(psi);
wGPS=deg2rad(wGPS);
wTR=deg2rad(wTR);
iGPS=deg2rad(iGPS);
iTR=deg2rad(iTR);
omegaGPS=deg2rad(omegaGPS);
omegaTR=deg2rad(omegaTR);
for i=1:6
    OmegaGPS(i)=deg2rad(OmegaGPS(i));
    OmegaTR(i)=deg2rad(OmegaTR(i));
end