


last_e(X,[X]).
last_e(X,[_|L]):-
	last_e(X,L),!.

fat(1,1).
fat(X,R):-
	X1 is X-1,
       fat(X1, Res),	R is Res * X.

