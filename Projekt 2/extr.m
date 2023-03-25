function [v]=extr(f,n,h)
  w=ableitung(f,n,h);
  v(1)=0;
  for i=2:n-1;
    if w(i-1)*w(i+1) <0;
      v(i)=1;
    else
      v(i)=0;
    endif
  endfor
  v(n)=0;
  endfunction