-module(ex1).
-export([f/0]).

f()->
	String = 'this is string',
	io:format("1. ~w~n",[String]),	
	Var = 34,
	io:format("2. ~w~n",[Var]),
	Tuple = {78, 23},
	io:format("3. ~w~n",[Tuple]),
	Atom = atomvalue,
	io:format("4. ~w~n",[Atom]),
	Array = [45,68,23,9],
	io:format("5. ~w~n",[Array]).




