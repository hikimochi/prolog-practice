derive(Q):-derive2([Q]).
derive2([]).
derive2([Goal|Gs]):-
  rule(Goal,Body),
  append(Body,Gs,Resolvent),
  derive2(Resolvent).

rule(likes(sam,Food),[indian(Food), mild(Food)]).
rule(likes(sam,Food),[chinese(Food)]).
rule(likes(sam,Food),[italian(Food)]).
rule(likes(sam,chips),[]).

rule(indian(curry),[]).
rule(indian(dahl),[]).
rule(indian(tandoori),[]).
rule(indian(kurma),[]).

rule(mild(dahl),[]).
rule(mild(tandoori),[]).
rule(mild(kurma),[]).

rule(chinese(chow_mein),[]).
rule(chinese(chop_suey),[]).
rule(chinese(sweet_and_sour),[]).

rule(italian(pizza),[]).
rule(italian(spaghetti),[]).