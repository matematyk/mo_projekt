function W = test_matrix1(n)
    A = matrix1(n);
    [L,U,P] = ROZKLAD(A,1);
    x = ones(n, 1);
    b = A*x;
    z = ROZWIAZ(L,U,P,eye(n),b);
    b 
    z
    W = norm(x-z)/norm(x);
end
