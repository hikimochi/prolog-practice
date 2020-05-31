perm([], []).
perm(Xs, [Z|Zs]) :- select(Z, Xs, Ys), perm(Ys, Zs).