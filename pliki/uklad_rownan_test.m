function x = uklad_rownan_test()
  
  A = [10,-7,0;-3,2,6;5,-1,5];
  [L,U,P,Q] = ROZKLAD(A,2);
  b = [7;4;6];
  x = Q*(U\(L\P*b));
  

endfunction