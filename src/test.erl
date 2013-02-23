-module(test).

-export([t/0]).

t() ->
	ets:new(test_table, [named_table]),
	R = ecriterion:tc(fun() -> ets:insert(test_table, {make_ref()}) end,
		[{samples, 1000}]),
 	ets:delete(test_table),
 	R.
 