function W = test_hilb(n)
    A = hilb(n);
    [L,U,P] = ROZKLAD(A,1);
    x = ones(n, 1);
    b = A*x;
    z = ROZWIAZ(L,U,P,eye(n),b);
    
    x = ones(n, 1);
    b = A*x;
    z = A\b;
    W = norm(x-z)/norm(x);
end