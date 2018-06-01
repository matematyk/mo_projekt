function main()
   A3 = [1,4;2,-7]
   b = [1;3];
  [n,n] = size(A3);
  [L,U,P] = ROZKLAD(A3,1);
  ROZWIAZ(L,U,P,eye(n),b);

endfunction