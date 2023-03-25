clc
clear all 
%f=@(x) cos(x)
f=@(x) exp(-x)
f2=@(x) x
unteregrenze=0
oberegrenze=1
x0=0.2
h=(oberegrenze-x0)/100;
x=linspace(x0,oberegrenze,100);
df=ableitung(f(x),100,h);
q=max(abs(df));
n=2
fix=fixpunkt(f,x0,n);
while abs(f(fix(n))-fix(n))>10^-8

fix=fixpunkt(f,x0,n);
n=n+1;
endwhile
disp(n)
disp(q)
format long
disp(fix(n))
subplot(1,2,2)
hold off
plot(1:n,fix) %divergenzplot
subplot(1,2,1)
plot(linspace(0,1),f(linspace(0,1)),'b')
hold on
plot(linspace(0,1),linspace(0,1),'-g')
plot([x0,x0],[0,f(x0)],'o-r')
plot([x0,fix(1)],[f(x0),f2(fix(1))],'o-r')
for i=1:n-1
plot([fix(i),fix(i)],[f2(fix(i)),f(fix(i))],'o-r')
plot([fix(i),fix(i+1)],[f(fix(i)),f2(fix(i+1))],'o-r')
  endfor

hold off