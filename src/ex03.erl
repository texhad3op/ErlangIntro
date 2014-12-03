% Pattern matching

-module(ex03).
-export([f/0]).

f()->
	Var1 = 10,
	%Var1 = 11,	
	Var2 = Var1,
	io:format("val: ~p~n",[Var2]),	
	
	Arr1 = [30],
	[W] = Arr1,
	io:format("Array's element: ~p~n",[W]),	
	
	Arr2 = [30, 10],
	[_, W1] = Arr2,
	io:format("Array's element: ~p~n",[W1]),		
	
	Tuple1 = {recatngle, 30, 10},
	{_, N, _} = Tuple1,
	io:format("width: ~p~n",[N]),
	
	Human = {{age, 2004}, {position, developer}},
	{{_, _}, {_, Position}} = Human,
	io:format("position: ~p~n",[Position]).



