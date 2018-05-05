function [x] = ROZWIAZ(R, p, q, b)
%algorytm dla zamiany w kolumnie %
P = 1:N; % tu zapamiętujemy wykonane permutacje Wektor
for k=1:N-1
	%a(i,:)
	w wektorze A(k:N,k) znajdź element główny a_{pk};
	zamień ze sobą wiersze A(k,1:N) i A(p,1:N);
	P(k) = p;
  P(p) = k;
	if  a_{kk} == 0
		disp("STOP: macierz osobliwa!")
	end
	
	% kontunuuj tak jak w algorytmie bez wyboru 
	
	for i=k+1:N % wyznaczenie  k-tej kolumny  L 
		 a_{ik} = a_{ik}/a_{ii}
	end
	for j=k+1:N % modyfikacja podmacierzy  A_{22} = A_{22} - l_{21}u_{12}
		for i=k+1:N 
			 a_{ij} -=  a_{ik}a_{kj};
		end
	end
end


endfunction