function P = permutacje(wektor)
    s = size(wektor) 
    for k=1:size
      P(k,size-k) = 1
      P(size-k,k) = 1
  
  

endfunction