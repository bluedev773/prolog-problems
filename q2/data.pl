path(Node, Node, _, [Node]).

path(Start, Finish, Visited, [Start | Path]) :-
     edge(Start, X),
     not(member(X, Visited)),
     path(X, Finish, [X | Visited], Path).



edge(a,b).    edge(a,d).
edge(b,c).    edge(b,d).
edge(c,b).
edge(e,c),    edge(e,d).
