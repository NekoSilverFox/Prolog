% 定义了 parent 的关系：前者是后者的家长
parent(tinna, william).
parent(tom, cat).

% 定义了性别
man(tom).
man(cat).
woman(tinna).
woman(william).

% 使用 :- 定义了规则。如果 X 要是 Y 的母亲，要满足 X 是 Y 的父母和 X 是女性
mother(X, Y) :-
    parent(X, Y),
    woman(X).

father(X, Y) :-
    parent(X, Y),
    man(X).

% X 是 Y 的姐或妹
sister(X, Y) :-
    % 要有一样的父母
    parent(Z, X),
    parent(Z, Y),
    famale(X),
    X \== Y.