
pai(pedro,maria).
pai(pedro,joaquim).
pai(pedro,ana).


menu:-
	write('1-listar n relacionamentos pai'),nl,
	write('2-adicionar relacionamento pai'),nl,
	write('3-remove relacionamento pai'),nl,
	write('4-sair'),nl,
	read(X),
	opcao(X).




opcao(1):-
	repeat, pai(X,Y),
	write('pai('), write(X), write(','), write(Y), write(')'),nl,menu,fail.

