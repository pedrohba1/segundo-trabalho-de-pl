% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.


nelemento(H, [H|_], 1).
nelemento(X, [_|T],  K):-
	K >1,
	K1 is K-1,
	nelemento(X,T,K1).

%n-ésimo elemento de uma PA feito usando recursão em cauda:
pa(1,Elem,_,Elem).
pa(N,First,Ratio, Elem):-
	N  >1,
	N1 is N-1,
	Next is First+Ratio,
	pa(N1,Next,Ratio,Elem).

%Soma dos termos da PA feito usando recursao em cauda:




%itens da questao 3:
%1.R: X = a.
%2.R: X	= [].
%3.R: False.
%4.R: X = [a].
%5.R: False.






