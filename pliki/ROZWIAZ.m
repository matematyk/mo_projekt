function [x] = ROZWIAZ(L,U, P, q, b)
   L, U, P,q,b
   x = U\(L\P*b)


endfunction