deleteElement(_, [], []).

deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

deleteElement(X, [Y|Tail], [Y|Result]) :-
    X \= Y,
    deleteElement(X, Tail, Result).

% 
% Prolog Outputs:
% 
%88 ?- consult(['/Users/arwa/Downloads/task1.pl']).
% true.
%
% 89 ?- deleteElement(1, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
% List = [2, 4, 3, 4, 3, 4, 2].
%
% 90 ?- deleteElement(3, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
% List = [1, 2, 1, 4, 4, 1, 1, 1, 4|…].
%
% 91 ?- deleteElement(2, [1,2,4,3,4], List).
% List = [1, 4, 3, 4].