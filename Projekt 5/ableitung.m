function [w] =ableitung(y,n,h)
  %y y werte 
  %n anz der punkte
%h abstand der x werte voneinander
 w(1)=1/h*(y(2)-y(1));
 for i=2:n-1
   w(i)=1/(2*h)*(y(i+1)-y(i-1));
  endfor
  w(n)=1/h*(y(n)-y(n-1));
  endfunction