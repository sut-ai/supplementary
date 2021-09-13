father(albert, bob).
father(albert, betsy).
father(albert, bill).
 
mother(alice, bob).
mother(alice, betsy).
mother(alice, bill).
 
father(bob, carl).
father(bob, charlie).

parent(X,Y) :- father(X,Y); mother(X,Y).

grandparent(X,Y) :- parent(X,Z),parent(Z,Y). %X is grandparent of Y if X is parent of Z and Z is parent of Y

grandchild(X,Y) :- parent(Z,X) , parent(Y,Z). %X is grandchild of Y if Y is parent of Z and Z is parent of X