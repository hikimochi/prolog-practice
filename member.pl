member(X,[X|_]). %クエリはmemberだから最初はここ読む
member(X,[_|List]):-member(X,List).