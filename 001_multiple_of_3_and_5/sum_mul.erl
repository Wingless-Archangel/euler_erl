-module(sum_mul).

-export([sum_mul/1]).

sum_mul(N) ->
	tail_sum_mul(N, 0).

tail_sum_mul(0, Sum) -> Sum;
tail_sum_mul(N, Sum) when N rem 5 == 0 -> 
	io:format("N is ~p Sum is ~p~n", [N, Sum]),
	tail_sum_mul(N-1, Sum+N);
tail_sum_mul(N, Sum) when N rem 3 == 0 ->
	io:format("N is ~p Sum is ~p~n", [N, Sum]),
	tail_sum_mul(N-1, Sum+N);
tail_sum_mul(N, Sum) -> tail_sum_mul(N-1, Sum).
