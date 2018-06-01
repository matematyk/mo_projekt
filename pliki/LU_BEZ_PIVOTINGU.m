function [L,U] = LU_BEZ_PIVOTINGU(A)
  n = size(A); 
  L = eye(n);
  for k=1:n
    if A(k,k) == 0 
      disp("blad");
    end
    for i=k+1:n
          L(i,k) = A(i,k)/A(k,k);
      for j=1:n
         A(i,j) -= L(i,k)*A(k,j);
      end
    end
  end
  U = A;
  
endfunction