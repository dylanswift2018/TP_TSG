% TP TSG  :
% Les intervalles de travail : 
T=[-5:0.01:5] ;
T2=[-10:0.01:10] ;

% On trace le premier graphe du signal rectangulaire x(t)
X=rectpuls(T,4) ;
subplot(2,5,1); 
plot(T,X,'k') ; 
title(' Le Graphe du signal x(t)');
xlabel('t');
ylabel('x(t)');

% On trace le deuxième graphe du signal rectangulaire y(t)
Y=rectpuls(T,8) ;
subplot(2,5,2); 
plot(T,Y,'r') ; 
title(' Le Graphe du signal y(t)'); 
xlabel('t');
ylabel('y(t)');

%Partie A
% On fait le tracé de la convolution z(t)
Z=conv(X,Y) ;
subplot(2,5,3); 
plot(T2,Z,'g') ;
title(' Le Graphe du signal z(t)');
xlabel('t');
ylabel('z(t)');


% On fait le tracé de la corrélation Rxy(t)
Rxy=xcorr(X,Y) ;
subplot(2,5,4); 
plot(T2,Rxy) ; 
title(' L''intercorrélaation Rxy(t)');
xlabel('t');
ylabel('Rxy(t)');

% L'intercorrélation Ryx(t)
Ryx=xcorr(Y,X) ;
subplot(2,5,5); 
plot(T2,Ryx,'y') ;
title(' L''intercorrélaation Ryx(t)');
xlabel('t');
ylabel('Ryx(t)');

% On trace Ryx(t) et Rxy(t) dans la meme fenetre 
figure;
plot(T2,Rxy,'y') ; 
plot(T2,Ryx,'r') ;
legend('L''intercorrélaation Rxy(t)','thetadot(Velocity 1)','L''intercorrélaation Ryx(t)','thetadot(Velocity 3)');


% On fait le tracé de la convolution z(t) avec stem
figure;
stem(Z,'r','filled');
title(' Le Graphe du signal z(t)');
xlabel('t');
ylabel('z(t)');

%Partie B 
% la TF de x(t) 
figure;
XF=fft(X,500) ;
ABSXF=abs(XF) ; 
subplot(2,2,1);
plot(fftshift(ABSXF),'k') ;
xlabel('f');
ylabel('|X(f)|');

% la TF de y(t) 
YF=fft(Y,500) ;
ABSYF=abs(YF) ; 
subplot(2,2,2);
plot(fftshift(ABSYF),'r') ;
xlabel('f');
ylabel('|Y(f)|');

% la TF du mutliplication Z(F)=X(F).Y(F)
Xp=fft(X,500) ;
Yp=fft(Y,500) ;
Zp=(Xp.*Yp)
Zpi=abs(Zp) ; 
subplot(2,2,3);
plot(fftshift(Zpi)) ;
xlabel('f');
ylabel('|Z(f)|');

% la TF du z(t)= Z(f)
Zf=fft(Z,500) ; 
Zfi=abs(Zf) ; 
subplot(2,2,4);
plot(fftshift(Zfi),'g') ;
xlabel('f');
ylabel('|Z''(f)|=Tf{z(t)}');





