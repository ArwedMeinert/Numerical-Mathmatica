function w=Lagrange(x,xW,yW,grad)
  %x werte für die das Interpolationspolynom ausgerechnet wird
  %xW Vorgegebenen x-Werte 
  %yW funktionswerte zu den x werten 
  %grad grad des polynoms
m=min(grad+1,length(xW));
for k=1:length(x)
w(k)=0;
for i=1:m
  p=1;
  for j=1:m
    if i~=j
    p=p*(x(k)-xW(j))/(xW(i)-xW(j));
    endif
endfor
w(k)=w(k)+p*yW(i); %w ist ein Vektor mit den Funktionswerten der     
 endfor % Approximation zu den gegebenen x werten
endfor
  endfunction