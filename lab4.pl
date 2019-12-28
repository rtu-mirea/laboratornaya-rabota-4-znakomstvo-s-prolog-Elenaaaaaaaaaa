  parent(m1, w1).
  parent(m1, w2).
  parent(w3, m2).
  parent(w3, m3).
  parent(w3, w3).
  male(m2).
  male(m3).
  female(w2).
  female(w3).
  likes(m3, something).
  can_buy(m2, else).
  
  /*RULE BROTHER*/
  brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),male(Y).
  /*RULE ANCESTOR (PREDOK)*/
  ancestor(X,Z):-parent(X,Y),ancestor(Y,Z).
  /*RULE SISTER*/
  sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),female(Y).
