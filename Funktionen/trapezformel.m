function [a]=trapezformel(f,gu,go,n)
  h=(go-gu)/n;
  x=linspace(gu,go,n);
  y=f(x);
  sum=0;
  sum=sum+y(1)/2;
  for i=2:n-1
    sum=sum+y(i);
  endfor
  sum=sum+y(n)/2;
  a=sum*h;
endfunction
