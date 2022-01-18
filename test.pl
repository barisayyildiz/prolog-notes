% insert x to list
myappend(X,L1,[X|L1]).

% concat
concat([],L2,L2).
concat([H|T],L2,[H|L3]) :- concat(T,L2,L3).


% is sorted
issorted([]).
issorted([_]).
issorted([X,Y|T]) :- X =< Y, issorted([Y|T]).


% sum of a list
sumlist([],0).
sumlist([H|T],N) :- sumlist(T,N1),
										N is H+N1.

% length of a list
size([],0).
size([_|T], N) :- size(T,N1),
									N is N1+1.

% population denstiy
population(china,100).
population(india,85).
population(usa,30).
population(germany,9).

area(china,10).
area(india,4).
area(usa,12).
area(germany,2).

density(X,Y) :- population(X,Population),
								area(X,Area),
								Y is Population/Area.

% member of a list
member(X,[X|_]).
member(X,[_|T]) :- member(X,T).
