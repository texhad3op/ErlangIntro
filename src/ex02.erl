-module(ex02).
-export([f/0]).

f()->
	Var = 34,
	io:format("1. ~p~n",[Var]),
	
	Atom = atomvalue,
	io:format("2. ~p~n",[Atom]),
	
	List = [45,68,23,9],
	io:format("3. ~p~n",[List]),
	
	Tuple = {78, 23},
	io:format("4. ~p~n",[Tuple]),
	
	String = "this is strings",
	io:format("5. ~s~n",[String]).	



