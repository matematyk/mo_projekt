% algorytm zamieniajacy wektor na macierz permutacji
function P = permutacje(wektor)
    [w,s] = size(wektor);
    
    for k=1:s
      P(k,wektor(k)) = 1;
    end

endfunction