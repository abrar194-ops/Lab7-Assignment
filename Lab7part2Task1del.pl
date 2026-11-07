% Base case

deleteElement(_, [], []).

% if X is matches the Head
%result=previous tail

deleteElement(X, [X | Tail], Result) :-
    deleteElement(X, Tail, Result).

% Case 2: If the head does not match X


deleteElement(X, [H | Tail], [H | Result]) :-
    deleteElement(X, Tail, Result).
