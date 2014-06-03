-module(ex7).
-export([f/0]).

f()->
	Figures = [{rectangle, 2, 10}, {square, 7}, {square, 9}, {circle, 5} ],
	calculate_areas(Figures).

calculate_areas([H|T])->
	io:format("~w~n",[area(H)]),
	calculate_areas(T);
calculate_areas([])->
	io:format("list end is reached").



area({rectangle, Width, Height}) -> Width * Height;
area({square, Length}) -> Length * Length;
area({circle, Radius}) -> 3.14159 * Radius * Radius.