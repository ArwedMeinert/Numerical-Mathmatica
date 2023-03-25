function [X,Y]=euler(f,x0,y0,h,n)
  X(1)=x0;
  Y(1)=y0;
  for k=1:n-1
    X(k+1)=X(k)+h;
    Y(k+1)=Y(k)+h*f(X(k),Y(k));
  endfor
  endfunction