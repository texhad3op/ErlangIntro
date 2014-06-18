-module(ex04).
-export([f/0]).

f()->
	Numbers = [1,7,5,9,3,0,12],
	iterate(Numbers).


iterate([H|T])->
	io:format("~w ~n", [H]),
	iterate(T);
iterate([])->
	io:format("list end is reached~n").

