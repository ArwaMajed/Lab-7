
add_at_the_end(X, [], [X]).
add_at_the_end(X, [H|Tail], [H|NewTail]) :-
    add_at_the_end(X, Tail, NewTail).


% 
% Prolog Outputs:
% 
% 93 ?- consult(['/Users/arwa/Downloads/task2.pl']).
% true.
%
% 93 ?- add_at_the_end(5, [1,2,3,4], List).
% List = [1, 2, 3, 4, 5].
%
% 94 ?- add_at_the_end(d, [a,b,c], List).
% List = [a, b, c, d].