function [x]=fixpunkt(f,x0,n)
  x(1)=f(x0);
  for i=1:n
    x(i+1)=f(x(i));  
  endfor
  endfunction