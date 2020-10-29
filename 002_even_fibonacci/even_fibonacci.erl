-module(even_fibonacci).

-export([even_fibonacci/3]).

even_fibonacci(X, Y, Amount) ->
	tail_even(X, Y, Amount, 2). % since the first even element is 2

tail_even(X, Y, Amount, Total) when X + Y > Amount ->
	Total;
tail_even(X, Y, Amount, Total) when (X + Y) rem 2 == 0 ->
	Temp = X + Y,
	tail_even(Y, Temp, Amount, Total + Temp);
tail_even(X, Y, Amount, Total) ->
	tail_even(Y, X + Y, Amount, Total).
