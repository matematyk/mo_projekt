function [L,U, P, Q] = ROZKLAD(A,s)
  
  if s == 1
    [L,U] = LU_BEZ_PIVOTINGU(A);
  elseif s == 2
    [L,U,P] = LU_COLUMN(A);
  elseif s == 3
    [L,U,P,Q] = LU_FULL_CHOICE(A);
  else 
    disp("blad");
  end
  
  

endfunction