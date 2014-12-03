-module(ex11).
-export([start/0, thread_func1/0, thread_func2/0]).

start()->
	Pid1 = spawn(ex11, thread_func1,[]),
	Pid2 = spawn(ex11, thread_func2,[]),	
	Pid1 ! {Pid2, ok}.

	
thread_func1()->
	receive
		{SenderPid, ok} -> io:format("~nmessage from ~p", [SenderPid]),
						   SenderPid ! {self(), ret},
						   thread_func1()
	end.
	
	
thread_func2()->
	receive
		{SenderPid, ret} -> io:format("~nanswer"),
						    thread_func2()
	end.	
