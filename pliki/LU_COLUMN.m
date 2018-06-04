function [L, U, P] = LU_COLUMN(A)
    % badam wymiar 
    n = size(A,1);
    % kopiuje macierz
    Ak = A;
    %tworze macierz z zerami na przekatnej
    L = eye(n);
    U = zeros(n);
    % tworze permutacje identycznosciowa
    P = eye(n);
    % petla eliminacji
    for k = 1:n-1
        % szukam elementu co do normy nawiekszego
        [~,r] = max(abs(Ak(k:end,k)));
        % okreslam pozycje
        r = n-(n-k+1)+r;
        % zamieniam z obecnym ktym wierszem
        Ak([k r],:) = Ak([r k],:);
        % zamieniam permutacje
        P([k r],:) = P([r k],:);
        
        for i = k+1:n
        % eliminuje wspolczynniki
            L(i,k) = Ak(i,k) / Ak(k,k);
            for j = 1:n
                U(k,j) = Ak(k,j);
                Ak(i,j) = Ak(i,j) - L(i,k)*Ak(k,j);
            end
        
        end
    end
    U(:,end) = Ak(:,end);
return