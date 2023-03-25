function [x]=newton(p,x0,n)
 x(1)=x0;
  for k=1:n
    xW=hornernewton(p,x(k));
   x(k+1)=x(k)-(xW(1)/xW(2));
  endfor
  endfunction