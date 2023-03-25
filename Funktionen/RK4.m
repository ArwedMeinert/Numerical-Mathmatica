function [X,Y]=RK4(f,x0,y0,h,n)
  X(1)=x0;
  Y(1)=y0;
  for k=1:n-1
    X(k+1)=X(k)+h;
    K1=h*f(X(k),Y(k));
    K2=h*f(X(k)+h/2,Y(k)+K1/2);
    K3=h*f(X(k)+h/2,Y(k)+K2/2);
    K4=h*f(X(k)+h,Y(k)+K3);
    Y(k+1)=Y(k)+1/6*(K1+2*K2+2*K3+K4) ; 
  endfor
  endfunction