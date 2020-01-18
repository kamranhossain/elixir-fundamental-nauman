# CommandLine reperesentation of anonymous function in elixir

iex(1)> fn(a, b) ->
...(1)>   a + b
...(1)> end
#Function<13.126501267/2 in :erl_eval.expr/5>
iex(2)> add = fn(a, b) ->
...(2)>     a + b
...(2)> end
#Function<13.126501267/2 in :erl_eval.expr/5>
iex(3)> add
#Function<13.126501267/2 in :erl_eval.expr/5>
iex(4)> add.(2, 1)
