function [X,Y]=heun(f,x0,y0,h,n)
  X(1)=x0;
  Y(1)=y0;
  for k=1:n-1
     X(k+1)=X(k)+h;
    K1=h*f(X(k),Y(k));
    K2=h*f(X(k)+h,Y(k)+K1);
    Y(k+1)=Y(k)+1/2*(K1+K2) ;
  endfor
  endfunction