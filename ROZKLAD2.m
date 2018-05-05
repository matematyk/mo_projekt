function [R,P,q] = ROZKLAD2(A,s)
  n = size(A)  
    
  for k=1:n-1
    if A(k,k) == 0 
      % a_{kk} == 0
      %STOP;
      disp("blad");
    end
    for i=k+1:n % wyznaczenie k-tej kolumny L */
      %<math>\displaystyle a_{ik}</math> = <math>\displaystyle a_{ik}/a_{ii}</math>;
      A(i,k)= A(i,k)/A(i,i);
    end
    for j=k+1:n % modyfikacja podmacierzy <math>\displaystyle A_{22} = A_{22} - l_{21}u_{12}^T</math>
      for i=k+1:n 
        %<math>\displaystyle a_{ij}</math> -= <math>\displaystyle a_{ik}a_{kj}</math>;
        A(i,j) -=A(i,k)*A(k,j);
      end
    end
  end
  
 
end