-module(ex13).
-export([f/0]).

f()->
	F = fun (X)->
				 if
					 X > 5->true;
					 true->false
				 end
		end,
	
	
	filter(F, [1,5,3,9,23]).

filter(F, [H|T])->
	case F(H) of
		true->
			[H|filter(F, T)];
		false->
			filter(F, T)
	end;
filter(_, [])->
	[].