-module(ex01).
-export([f/0]).

f()->
	String = "this is strings",
	io:format("1. ~s~n",[String]),	
	Var = 34,
	io:format("2. ~w~n",[Var]),
	Tuple = {78, 23},
	io:format("3. ~w~n",[Tuple]),
	Atom = atomvalue,
	io:format("4. ~w~n",[Atom]),
	List = [45,68,23,9],
	io:format("5. ~w~n",[List]).




