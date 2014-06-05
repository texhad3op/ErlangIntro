-module(ex02).
-export([f/0]).

f()->
	Tuple1 = {recatngle, 30, 10},
	{_, W, _} = Tuple1,
	io:format("width: ~w~n",[W]),
	
	Human = {{age, 2004}, {position, developer}},
	{{_, _}, {_, Position}} = Human,
	io:format("position: ~w~n",[Position]).
	



