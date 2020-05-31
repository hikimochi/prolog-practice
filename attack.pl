attack(X, Xs) :- attack_sub(X, 1, Xs).
attack_sub(X, N, [Y|_]) :- X =:= Y + N.
attack_sub(X, N, [Y|_]) :- X =:= Y - N.
attack_sub(X, N, [_|Ys]) :- N1 is N + 1, attack_sub(X, N1, Ys).