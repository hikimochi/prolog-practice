append(X,Y,Z):-
  X=[],
  Z=Y.
append(X,Y,Z):-
  X=[W|X1],
  append(X1,Y,Z1),
  Z=[W|Z1].