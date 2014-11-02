-module(ex06).
-export([f/0]).

f()->
	sum([8,5,3]).

sum([])->
	0;
sum([H|T])->
	H + sum(T).
	