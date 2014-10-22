-module(ex00).
-export([f/0]).

f()->
	sort([5,19,0,2,4,3,18,7]).

sort([Pivot|T]) ->
    sort([ X || X <- T, X < Pivot]) ++ [Pivot] ++ sort([ X || X <- T, X >= Pivot]);
sort([]) -> [].
