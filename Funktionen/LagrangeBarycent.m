function w=LagrangeBarycent(x,xW,yW,grad)
  %x werte für die das Interpolationspolynom ausgerechnet wird
  %xW Vorgegebenen x-Werte 
  %yW funktionswerte zu den x werten 
  %grad grad des polynoms
  L=barycentMatr(xW,grad);
  for i=1:length(x)
    N=0;
Z=0;
  for k=1:grad
    M=1;
    if x(i)~=xW(k)
      M=L(k,grad)/(x(i)-xW(k));
      Z=Z+M*yW(k);
      N=N+M;
    endif   
  endfor
  w(i)=Z/N;
  endfor
  endfunction