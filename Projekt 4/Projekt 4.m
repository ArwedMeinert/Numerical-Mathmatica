clc
clear all
f=@(x) 3*atan(x).*exp(x)-pi
unteregrenze=0
oberegrenze=1
gefgenauigkeit=7
n=ceil((gefgenauigkeit+1+log10(abs(oberegrenze-unteregrenze)))/log10(2)+1)
format long
[a,b]=bisektion(f,unteregrenze,oberegrenze,n);
nullstelle=[b(n+1),f(b(n+1))]
hold on
grid on
plot(linspace(unteregrenze,oberegrenze,n),f(linspace(unteregrenze,oberegrenze,n)))
for k=1:n
plot([a(k),b(k)],[f(a(k)),f(b(k))],'o-r')
endfor
