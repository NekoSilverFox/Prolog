post(tree(X, L, R), Xs) :-
    post(L, Ls),
    post(R, Rs),
    append([X], Ls, Ls1),
    append(Ls1, Rs, Xs),
		post(void, []).
