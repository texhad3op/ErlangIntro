-module(ex10).

-export([f/0, func_in_thread/0]).

f()->
	Pid = spawn(ex10, func_in_thread, []),
	Pid ! work.


func_in_thread()->
	receive
		work ->
			io:format("it's working!"),
			func_in_thread()
	end.