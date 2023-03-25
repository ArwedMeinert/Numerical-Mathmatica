function [p]=hornernewton(a1,z)
  n=length(a1);
  p=[0 0 0];
  for k=1:n
    p(3)=z*p(3)+2*p(2);
    p(2)=z*p(2)+p(1);
    p(1)=z*p(1)+a1(k);
  endfor
  endfunction