% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

concatena([],[],_).
concatena([],L,L).
concatena([X|R], L, [X|C]):-
	concatena(R,L,C).

remove_first([_|Y], R):-
	R = Y.

tira(_,[],[]).
tira(E, [E|Y], Y):-
	!.

tira(E,[H|T], R):-
	tira(E, T, R1),
	R = [H|R1].

tira_todos(_,[],[]).

tira_todos(E, [H|T], [H|R]):-
	H =\= E,
	tira_todos(E,T,R).

tira_todos(E, [H|T], R):-
	H = E,
	tira_todos(E,T,R).





