-module(ex4).
-export([f/0]).

f()->
	Animals = [{dog, 20}, {cat, 4}, {human, 73}, {orangutan, 40}, {meduse, 9}, {godzilla, 2000000}],
	iterate(Animals).


iterate([{Type, Weight}|T])->
	io:format("type: ~w ~w~n", [Type, Weight]),
	iterate(T);
iterate([])->
	io:format("list is reached~n").

