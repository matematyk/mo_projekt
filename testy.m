function assert = testy()
  A1 = [0,1;1,0];
  A2 = [1,0,1;2,2,2;3,3,3];
  A3 = [3,2,1;30,22,11;0,20,110]
  [R,q,p] = ROZKLAD(A1);
  [R,q,p] = ROZKLAD(A2);
  [R,q,p] = ROZKLAD(A3);
  
  
  
endfunction