% Факториал числа 0 равен 1
factorial(0, 1). 
factorial(0, s(0)). 

% вычисление факториала (** - factorial)
factorial(s(X), Y) :-
	factorial(X, Z),
	times(s(X), Z, Y).
	
% операции умножения (* - times)
times(0, X, 0).
times(s(X), Y, Z) :-
    times(X, Y, W),
    plus(W, Y, Z).
    
% операция сложения (+ - plus)
plus(0, X, X) :- num(X).
plus(s(X), Y, s(Z)) :- plus(X, Y, Z).

% операция число
num(0).
num(s(X)) :- num(X).