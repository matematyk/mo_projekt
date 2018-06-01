function [L,U,P,Q] = LU_FULL_CHOICE(A)
  [m,n] = size(A);
  if m != n 
    disp("macierz nie jest kwadratowa!");
  end 
  L = eye(n);

  
   P = 1:n; % wektor permutacji P
   Q = 1:n; % wektor permutacji Q
    for k=1:n-1
    %w w macierzy A(k:n,k:n)
    
    [macierz_elementow,pozycje] = max(abs((A(k:n,k:n))));
    [element , poz_k] = max(macierz_elementow);
    
    poz_w = pozycje(poz_k)+k-1;
    poz_k = poz_k+k-1;
    % zamieniamy wiersze i kolumny

    A([k, poz_w],:) = A([poz_w, k],:);
    A(:,[k, poz_k] ) = A(:,[poz_k, k]);

    P([k, poz_w]) = P([poz_w, k]); 
    Q([k, poz_k]) = Q([poz_k, k]);
    
      if  A(k,k) == 0
        disp("STOP: macierz osobliwa!")
      end
    
    % kontunuuj tak jak w algorytmie bez wyboru 
     % wyznaczenie k-tej kolumny  L 
    for i=k+1:n
          L(i,k) = A(i,k)/A(k,k);
      for j=1:n
         A(i,j) -= L(i,k)*A(k,j);
      end
    end
  end
  U = A;
  P = permutacje(P);
  Q = permutacje(Q);
    
    

endfunction