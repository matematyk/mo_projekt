function [L,U,P] = LU_COLUMN(A)
  [m,n] = size(A);
  if m != n 
    disp("macierz nie jest kwadratowa!");
  end 
  L = eye(n);

  
   P = 1:n; % tworzymy wektor permutacji
    for k=1:n-1
    %w wektorze A(k:N,k) znajdź element główny;
    [pivot,p] = max(abs((A(k:n,k))));
    
    p = p+k-1;
    temp1 = A(k,1:n);
    temp2 = A(p,1:n);
    
    A(k,1:n) = temp2;
    A(p,1:n) = temp1;
 
    temp3 = P(k);
    P(k) = P(p);
    P(p) = temp3;
   
      if  A(k,k) == 0
        disp("STOP: macierz osobliwa!")
      end
    
    % kontunuuj tak jak w algorytmie bez wyboru 
    % wyznaczenie  k-tej kolumny  L

    % modyfikacja podmacierzy
    for i=k+1:n
          L(i,k) = A(i,k)/A(k,k);
      for j=1:n
         A(i,j) -= L(i,k)*A(k,j);
      end
    end
  end
  P = permutacje(P);
  U = A;
    
    
    
end