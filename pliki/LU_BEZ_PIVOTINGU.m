function [L,U] = LU_BEZ_PIVOTINGU(A)
  n = size(A); 
  L = eye(n);
  U = zeros(n);
  Ak = A;
  for k=1:n
    if A(k,k) == 0 
      disp("blad")
      break
    end
    
    for i = k+1:n
       L(i,k) = Ak(i,k) / Ak(k,k);
       for j = 1:n
           U(k,j) = Ak(k,j);
           Ak(i,j) = Ak(i,j) - L(i,k)*Ak(k,j);
       end
    end
  end
  U(:,end) = Ak(:,end);
  
endfunction