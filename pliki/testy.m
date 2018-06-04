function assert = testy()
  A0 = [1, 2; 
        3, 4];
  A1 = [1,2;
        3,4];
  A2 = [1,0,1;
        2,2,2;
        3,3,3];
        % do testów trzeba podawac tylko macierze ktore maja dobry rozklad
        % assert moze zwrocic blad jesli porownuje dwa floaty
        
  A3 = [3,2,1;
        30,22,11;
        0,20,110]; % rozwiazanie egzaminu
  AS = [4,2,4;
        2,5,6;
        4,6,9];
        
        
  
  [L,U,p] = LU_COLUMN(A1);
  [L_cor, U_cor, p_cor] = lu(A1);
  
  assert(L_cor==L && U_cor==U && p_cor == p);

  [L1,U1] = LU_BEZ_PIVOTINGU(AS); %diagonalna
  
  
  [L1_cor, U1_cor, P1_cor]= lu(AS);
  
  assert(L1_cor==L1 && U1_cor==U1); % funkcja assert wyrzuci bład jeśli warunek jest false;

 
  p = [1,2,3,4];
  % testy do funkcji permutacje
  P = permutacje([1,2,3,4]);
  assert(P==eye(4));
  
  p1 = [2,3,1];
  P1 = permutacje(p1);
  
  PERM = [0,1,0;
          0,0,1;
          1,0,0];
  assert(P1==PERM);
  
  
  %% egzamin test + full choice wybór
  [a,b,p] = lu(AS)
  [l_a,u_a,p_a] = LU_FULL_CHOICE(AS);
  
  assert(a==l_a && b==u_a);
  
  
  
endfunction