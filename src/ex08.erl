-module(ex08).
-export([f/0]).

f()->
	Animals = [{dog, 20}, {cat, 4}, {human, 73}, {orangutan, 40}, {meduse, 9}, {godzilla, 2000000}],
	Total = calculate_sum(Animals),
 	io:format("Total: ~p~n", [Total]).

calculate_sum([{_Type, Weight}|T]) -> Weight + calculate_sum(T);
calculate_sum([]) -> 0.
