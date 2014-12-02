% Recursion

-module(ex07).
-export([f/0]).

f()->
	Animals = [{dog, 20}, {cat, 4}, {human, 73}, {orangutan, 40}, {meduse, 9}, {godzilla, 2000000}],
	iterate(Animals).


iterate([{Type, Weight}|T])->
	io:format("type: ~p ~p~n", [Type, Weight]),
	iterate(T);
iterate([])->
	io:format("list's end is reached~n").