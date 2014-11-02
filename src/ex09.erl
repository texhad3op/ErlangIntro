-module(ex09).
-export([f/0]).

f()->
	Animals = [{dog, 20}, {cat, 4}, {human, 73}, {orangutan, 40}, {meduse, 9}, {godzilla, 2000000}],
	Total = calculate_sum(Animals),
 	io:format("Total: ~w~n", [Total]).


calculate_sum([List])->
 	calculate_sum(List, 0).
calculate_sum([{Type, Weight}|T], Total)->
 	calculate_sum(T, Total + Weight);
calculate_sum([], Total)->
	Total.