clc
clear all
p=[1/5 -5/24 -1/6 -1 1 1/2];
n=1;
g=10^-5
x0=-0.2
x1=1.3
x2=2
iterationp1=newton(p,x0,n);
iterationp2=newton(p,x1,n);
iterationp3=newton(p,x2,n);
plot(linspace(-0.5,2),polyval(p,linspace(-0.5,2)))
while(abs(roots(p)(4)-iterationp2(n))>g||abs(roots(p)(3)-iterationp3(n))>g||abs(roots(p)(5)-iterationp1(n))>g)
n=n+1
iterationp1=newton(p,x0,n);
iterationp2=newton(p,x1,n);
iterationp3=newton(p,x2,n);
endwhile
hold on
grid on
for i=1:length(iterationp1)-1
  plot([iterationp1(i),iterationp1(i)],[0,polyval(p,iterationp1(i))],'o-r')
  plot([iterationp1(i),iterationp1(i+1)],[polyval(p,iterationp1(i)),0],'o-r')
endfor
for i=1:length(iterationp2)-1
  plot([iterationp2(i),iterationp2(i)],[0,polyval(p,iterationp2(i))],'o-r')
  plot([iterationp2(i),iterationp2(i+1)],[polyval(p,iterationp2(i)),0],'o-r')
endfor
for i=1:length(iterationp3)-1
  plot([iterationp3(i),iterationp3(i)],[0,polyval(p,iterationp3(i))],'o-r')
  plot([iterationp3(i),iterationp3(i+1)],[polyval(p,iterationp3(i)),0],'o-r')
endfor
hold off
disp('die Nullstellen mit dem newton schema und die exakten :')
format long
roots(p)
iterationp1(n)
iterationp2(n)
iterationp3(n)