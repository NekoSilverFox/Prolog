% 基本情况：0的阶乘是1
factorial(0, s(0)).

% 递归规则：计算N的阶乘
factorial(0, s(0)).
factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, SubResult),
    multiply(N, SubResult, Result).

% 辅助谓词：乘法操作
multiply(0, _, 0).
multiply(s(X), Y, Z) :-
    multiply(X, Y, W),
    add(Y, W, Z).

% 辅助谓词：加法操作
add(0, Y, Y).
add(s(X), Y, s(Z)) :- add(X, Y, Z).