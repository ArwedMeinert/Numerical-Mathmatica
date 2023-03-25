function [a]=simpson(f,gu,go,n)
  x=linspace(gu,go,n);
  h=(go-gu)/n;
  sum=0;
  for i=1:2:n-2
    sum=sum+f(x(i))+4*f(x(i+1))+f(x(i+2));
  endfor
  a=h/3*sum;
endfunction
