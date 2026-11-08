start :-
    shopping_menu([coffee, milk, chocolate, apple, juice]).

menu :-
    start.
shopping :-
    start.

shopping_menu(List) :-
    nl,
    write('SHOPPING LIST: '), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE'), nl,
    read(Choice),
    handle_choice(Choice, List).

handle_choice(d, List) :-
    !,
    nl,
    display_items(List),
    shopping_menu(List).

handle_choice(a, List) :-
    !,
    write('enter the item you want to add it'), nl,
    read(Item),
    conc(List, [Item], NewList),
    write('The item has been added'), nl,
    shopping_menu(NewList).

handle_choice(e, _List) :-
    !.

handle_choice(_Other, List) :-
    write('Invalid choice, please try again.'), nl,
    shopping_menu(List).

display_items([]).
display_items([H|T]) :-
    write(H), nl,
    display_items(T).

conc([], L, L).
conc([X|L1], L2, [X|L3]) :-
    conc(L1, L2, L3).



%
% Prolog Output:
%
% 86 ?- consult(['/Users/arwa/Downloads/shopping.pl']).
% true.
% 
% 87 ?- start.
% 
% SHOPPING LIST: 
% d. display all items.
% a. Add an item to the list.
% e. exit.
% ENTER YOUR CHOICE
% |: d.
% 
% coffee
% milk
% chocolate
% apple
% juice
% 
% SHOPPING LIST: 
% d. display all items.
% a. Add an item to the list.
% e. exit.
% ENTER YOUR CHOICE
% |: a.
% enter the item you want to add it
% |: bread
% |: .
% The item has been added
% 
% SHOPPING LIST: 
% d. display all items.
% a. Add an item to the list.
% e. exit.
% ENTER YOUR CHOICE
% |: d.
% 
% coffee
% milk
% chocolate
% apple
% juice
% bread
% 
% SHOPPING LIST: 
% d. display all items.
% a. Add an item to the list.
% e. exit.
% ENTER YOUR CHOICE
% |: e.
% 
% true.