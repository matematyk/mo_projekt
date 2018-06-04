function [L,U,P,Q] = LU_FULL_CHOICE(A)
  [m,n] = size(A);
  if m != n 
    disp("macierz nie jest kwadratowa!");
  end 
  L = eye(n);
  Ak = A;
  U = zeros(n);
    
   p = 1:n; % wektor permutacji P
   q = 1:n; % wektor permutacji Q
    for k=1:n-1
    %w w macierzy A(k:n,k:n)
    
    [macierz_elementow,pozycje] = max(abs((A(k:n,k:n))));
    [element , poz_k] = max(macierz_elementow);
    
    poz_w = pozycje(poz_k)+k-1;
    poz_k = poz_k+k-1;
    % zamieniamy wiersze i kolumny

    A([k, poz_w],:) = A([poz_w, k],:);
    
    A(:,[k, poz_k] ) = A(:,[poz_k, k]);
   
    p( [k, poz_w] ) = p( [poz_w, k] );
    q( [k, poz_k] ) = q( [poz_k, k] );
    
    if  A(k,k) == 0
      disp("STOP: macierz osobliwa!")
    end
    
    % kontunuuj tak jak w algorytmie bez wyboru 
     % wyznaczenie k-tej kolumny  L 
    for i=k+1:n
          L(i,k) = Ak(i,k) / Ak(k,k);
      for j=1:n
         U(k,j) = Ak(k,j);
         Ak(i,j) = Ak(i,j) - L(i,k)*Ak(k,j);
      end
    end
  end
  U(:,end) = Ak(:,end);
  
  P = permutacje(p);
  Q = permutacje(q);
  
    

endfunction