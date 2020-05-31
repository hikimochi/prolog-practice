append(X,Y,Z):-
  X=[],
  Z=Y.
append(X,Y,Z):-
  X=[W|X1],
  append(X1,Y,Z1),
  Z=[W|Z1].

reverse([],[]).
reverse([X|L],R):- %空集合で収束する
  reverse(L,R1),
  append(R1,[X],R).