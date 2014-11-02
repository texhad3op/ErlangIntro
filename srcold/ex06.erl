-module(ex06).

-export([f/0, function_in_thread/0]).

f()->
	Pid = spawn(echo2, function_in_thread, []),
	Pid ! {work}.


function_in_thread()->
	receive
		{work} ->
			io:format("it's works!"),
			function_in_thread()
	end.

