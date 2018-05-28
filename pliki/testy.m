function assert = testy()
  A0 = [1, 2; 3, 4]
  A1 = [1,2;3,4];
  A2 = [1,0,1;2,2,2;3,3,3];
  A3 = [3,2,1;30,22,11;0,20,110] % rozwiazanie egzaminu
  AS = [4,1,3;1,5,2;3,2,7]
  [L,U,p] = LU_COLUMN(A0);
  [L_cor, U_cor, p_cor] = lu(A0);
  assert(L_cor==L);

  
  %[L,U,p] = LU_COLUMN(A2); 
  [L1,U1] = LU_BEZ_PIVOTINGU(AS); %diagonalna
  L1

  [L1_cor, U1_cor, P1_cor]= lu(AS);
  L1_cor
  assert(L1_cor==L1);

  
endfunction