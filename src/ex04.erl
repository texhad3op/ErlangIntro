-module(ex04).
-export([f/0]).

f()->
	Numbers = [1,7,5,9,3,0,12],
	[H|T] = Numbers,
	io:format("List head: ~p~n",[H]),
	io:format("List tail: ~p~n",[T]).