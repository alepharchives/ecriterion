-module(ecriterion).


-export([tc/1, tc/2]).


tc(Fun) -> tc(Fun, []).

tc(F, Options) ->
  Samples = proplists:get_value(samples, Options, 1),
  do_run(Samples, F).
  
  
do_run(0, _F) -> [];
do_run(N, F) when N > 0 ->
    [time(F) | do_run(N-1, F)].
  
time(F) ->
    erlang:garbage_collect(),
    Before = os:timestamp(),
    Val = F(),
    After = os:timestamp(),
    {timer:now_diff(After, Before), Val}.
    
