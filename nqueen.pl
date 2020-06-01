perm([], []).
perm(Xs, [Z|Zs]) :- select(Z, Xs, Ys), perm(Ys, Zs).

attack(X, Xs) :- attack_sub(X,1,Xs).
attack_sub(X, N, [Y|_]) :- X =:= Y + N.
attack_sub(X, N, [Y|_]) :- X =:= Y - N.
attack_sub(X, N, [_|Ys]) :- N1 is N + 1, attack_sub(X, N1, Ys).

safe([]).
safe([Qt | Qr]) :- \+ attack(Qt, Qr), safe(Qr).
queen(Q) :- perm([1,2,3,4,5,6,7,8], Q), safe(Q).