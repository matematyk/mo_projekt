function [L,U, P, q] = ROZKLAD(A,s)
  
  if s == 1
    [L,U] = LU_BEZ_PIVOTINGU(A);
  elseif s == 2
    [L,U,P] = LU_COLUMN(A);
  elseif s == 3
    %todo
  else 
    disp("blad");
  end
  
  

endfunction