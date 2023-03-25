clc
clear all
knoten=25 %Anzahl der gegebenen Knoten
x=linspace(-pi,pi,knoten);
f1=(5*cos(2*x));  %Zaehler von f
f2=(sqrt(1+x.^2));  %Nenner von f
f=f1/f2-x.*exp(-x.^2).*sin(3*x);  %gesamte Funktion
appLagrange=Lagrange(linspace(-pi,pi),x,f,knoten) %erzeugung der funktionswerte im Intervall mit Lagrande
subplot(2,2,1)
plot(linspace(-pi,pi),appLagrange)
hold on
subplot(2,2,1)
plot(x,f,'+')
title ("Interpolation nach Lagrange")
grid on
axis([-pi-0.5 pi+0.5 -2 2])
appLaBa=LagrangeBarycent(linspace(-pi-0.1,pi+0.1),x,f,knoten) %erzeugung der funktionswerte im Intervall mit Lagrande-Barycent
subplot(2,2,2)
plot(linspace(-pi-0.1,pi+0.1),appLaBa)
title("Interpolation nach Lagrange-Barycent")
grid on
axis([-pi-0.5 pi+0.5 -2 2])
hold on
plot(x,f,'+')
x=linspace(-pi,pi)  ;
f=f1/f2-x.*exp(-x.^2).*sin(3*x);  %Erzeugung der exakten funktionswerte im Intervall 
fehler1=f-appLagrange;  %Vergleich der exakten und der Interpolierten Werte
fehler2=f-appLaBa;
subplot(2,2,3)
plot(linspace(-pi,pi),fehler1)
grid on
axis([-pi-0.5 pi+0.5 -2 2])
subplot(2,2,4)
plot(linspace(-pi,pi),fehler2)
grid on
axis([-pi-0.5 pi+0.5 -2 2])
avgfehler1=sum(fehler1)/100
avgfehler2=sum(fehler2)/100
hold off