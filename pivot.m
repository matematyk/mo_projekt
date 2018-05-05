function [A,P] = pivot(A)
  [n,m] = size(A);
 
  P = 1:n
  for k=1:n-1
      %a(i,:)
      %w wektorze A(k:N,k) znajdź element główny a_{pk};
      [pivot,p] = max(A(k:n,k));
      A(k:n,k)
      %zamień ze sobą wiersze
      temp1 = A(k,1:n);
      temp2 = A(p,1:n);
      A(k,1:n) = temp2; % wiersz k-ty
      A(p,1:n) = temp1; % wiersz p-ty
      %max = pivot
      
      P(k) = p;
      P(p) = k;
      if  A(k,k) == 0
        disp("STOP: macierz osobliwa!")
   end
end