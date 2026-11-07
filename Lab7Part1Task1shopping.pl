shopping :-
    Basket = [coffee, milk, chocolate, apple, juice],
    menu(Basket).

menu(Basket) :-
    nl, write('** SHOPPING LIST **'), nl, nl,
    write('d. Display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. Exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(X),
    execute(X, Basket).

%-------------------------------------------
% Display

execute(d, Basket) :-
    nl,
    write('--- CURRENT SHOPPING LIST ---'), nl,
    display_items(Basket),
    write('------------------'), nl,
    continue(Basket).

%-------------------------------------------
% Add

execute(a, Basket) :-
    write('Enter the item you want to add: '),
    read(NewItem),
    append(Basket, [NewItem], UpdatedBasket),
    write('The item has been added'), nl,
    continue(UpdatedBasket).

%-------------------------------------------
% Exit

execute(e, _) :-
    nl, write('===< End >==='), nl.

%-------------------------------------------
% If wrong input was entered

execute(_, Basket) :-
    nl,
    write('Sorry, you chose the wrong option...'), nl, nl,
    continue(Basket).

%-------------------------------------------
% Continue function (go back to menu)

continue(Basket) :-
    menu(Basket).

%-------------------------------------------
% Display items recursively

display_items([]) :- !.
display_items([H|T]) :-
    write(H), nl,
    display_items(T).
