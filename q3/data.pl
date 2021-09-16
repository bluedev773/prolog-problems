edge(a,b,3).
edge(b,c,1).  edge(b,d,5).
edge(c,d,2).
edge(d,b,2).

connectedEdges(X,Y,L) :- edge(X,Y,L).
connectedEdges(X,Y) :- edge(Y,X,L).



path(A,B,Path,Len) :-
       travel(A,B,[A],Q,Len),
       reverse(Q,Path).

travel(A,B,P,[B|P],L) :-
       connectedEdges(A,B,L).
travel(A,B,Visited,Path,L) :-
       connectedEdges(A,C,D),
       C \== B,
       \+member(C,Visited),
       travel(C,B,[C|Visited],Path,L1),
       L is D+L1.

shortest(A,B,Path,Length) :-
   setof([P,L],path(A,B,P,L),Set),
   Set = [_|_], 
   minimal(Set,[Path,Length]).

minimal([F|R],M) :- min(R,F,M).


min([],M,M).
min([[P,L]|R],[_,M],Min) :- L < M, !, min(R,[P,L],Min).
min([_|R],M,Min) :- min(R,M,Min).

//try shortest(a,d,Path,Length).