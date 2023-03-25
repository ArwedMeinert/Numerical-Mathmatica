function [a,b]=bisektion(f,a,b,n)
  %f funktion als functionhandle
  %a untere Grenze
  %b obere Grenze
  %n iterationen
  a(1)=a;
  b(1)=b;
  x=linspace(a,b,n);
  fx=f(x);
  for i=1:n
    mk(i)=(a(i)+b(i))/2;
    if f(a(i))*f(mk(i))>0
      a(i+1)=mk(i);
      b(i+1)=b(i);
    else
      a(i+1)=a(i);
      b(i+1)=mk(i);
    endif
  endfor
  endfunction