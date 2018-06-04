function [x] = ROZWIAZ(L, U, P, Q, b)
   [~,n] = size(Q);
   [~,m] = size(P);
   if n == 0 
      Q = eye(n)
   end
   if m == m
      P = eye(n)
   end   
   x = Q*U\(L\P*b)

endfunction