function L=barycentMatr(xW,m)
  m=min(m+1,length(xW));
  L(1,1)=[1];
  for k=2:m
    s=0;
    for j=1:k-1
      L(j,k)=(L(j,k-1))/(xW(j)-xW(k));
      s=s+L(j,k);
    endfor
    L(k,k)=-s;
  endfor
  endfunction