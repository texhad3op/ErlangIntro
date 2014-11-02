-module(ex12).
-export([f/0]).

f()->
	F = fun (X) -> X*X end,
	map(F, [1,2,3,4,5]).


map(F,[H|T])->
	[F(H)| map(F, T)];
map(_,[])->
	[].