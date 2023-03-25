clc
clear all
h=0.001
n=ceil((8*pi)/h)
x=linspace(-4*pi,4*pi,n);

function y=fun(x);
  y=(x.^3+2*x.^2-3*x+4).*cos(2*x);
end
f=@fun;
f0=f(x);
f1=ableitung(f0,n,h);
f2=ableitung(f1,n,h);
extrema=extr(f0,n,h);
wendepunkte=extr(f1,n,h);
plot(x,f0)
hold on
grid on
localesmaximum=[0,0]
localesminimum=[0,0]
for i=1:n
  if extrema(i)==1
    plot(x(i),f0(i),'*r')  
    i=i+1
    if f0(i)>localesmaximum
      localesmaximum=[x(i),f0(i)];
    endif
    if f0(i)<localesminimum
      localesminimum=[x(i),f0(i)];
      i=1+1
    endif
  endif
  if wendepunkte(i)==1
    plot(x(i),f0(i),'+b')
    
  endif
endfor
anzextrema=sum(extrema)/2
anzwendepunkte=sum(wendepunkte)/2
disp(localesminimum)
disp(localesmaximum)
hold off