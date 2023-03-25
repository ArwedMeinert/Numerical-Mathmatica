clc
clear all
%anfangswertproblem 
unteregrenze=0
oberegrenze=1
h=0.01%h kann nach belieben eingestellt werden
n=ceil((oberegrenze-unteregrenze)/h)%aufrunden damit n immer gerade ist
x=linspace(unteregrenze,oberegrenze,n)
function y=fun(x,y);%definition der funktion mit function handle
  y=-2*x*y;
end
y0=1
x0=0
f=@fun;
Y_analytisch=exp(-x.^2) %berechnung der lösung durch aufteilen der variablen
[X_RK4,Y_RK4]=RK4(f,x0,y0,h,n); %berechnung mit RK4 verfahren 
[X_e,Y_e]=euler(f,x0,y0,h,n); %berechnung mit euler
[X_h,Y_h]=heun(f,x0,y0,h,n); %berechnung mit heun
subplot(3,2,1)
plot(X_RK4,[Y_RK4;Y_analytisch,],['r';'b'])
title('Runge-Kutta-RK4')
hold on
subplot(3,2,2)
plot(x,Y_analytisch-Y_RK4)
subplot(3,2,3)
plot(x,[Y_e;Y_analytisch],['g';'b'])
title('Euler')
subplot(3,2,4)
plot(x,Y_analytisch-Y_e)
subplot(3,2,5)
plot(x,[Y_h;Y_analytisch],['y';'b'])
title('Heun')
subplot(3,2,6)
plot(x,Y_analytisch-Y_h)
hold off
format long
fehlerrk4=sum(Y_analytisch-Y_RK4)/length(Y_RK4)
fehlere=sum(Y_analytisch-Y_e)/length(Y_e)
fehlerh=sum(Y_analytisch-Y_h)/length(Y_h)
