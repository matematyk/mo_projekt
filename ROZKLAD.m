function [R,P,q] = ROZKLAD(A,s)
  [m,n] = size(A)
  if m != n 
    disp("macierz nie jest kwadratowa!");
  end 
  L = eye(n);

  %algorytm dla zamiany w kolumnie % 
  
   P = 1:n; % tu zapamiętujemy wykonane permutacje Wektor
    for k=1:n-1
    %a(i,:)
    %w wektorze A(k:N,k) znajdź element główny a_{pk};
    [pivot,p] = max(A(k:n,k));
    
    p = p + k -1
    %zamień ze sobą wiersze
    temp1 = A(k,1:n);
    temp2 = A(p,1:n);
    
    A(k,1:n) = temp2;
    A(p,1:n) = temp1;
 
    temp3 = P(k)
    P(k) = P(p);
    P(p) = temp3;
   
      if  A(k,k) == 0
        disp("STOP: macierz osobliwa!")
      end
    
    % kontunuuj tak jak w algorytmie bez wyboru 
    
    for i=k+1:n % wyznaczenie  k-tej kolumny  L 
       %a_{ik} = a_{ik}/a_{ii}
       A(i,k) = A(i,k)/A(k,k)
       
       disp("AIK");
    end
    for j=k+1:n % modyfikacja podmacierzy  A_{22} = A_{22} - l_{21}u_{12}
      for i=k+1:n 
         A(i,j) -= A(i,k)*A(k,j);
      end
    end
  end
  P
    
end