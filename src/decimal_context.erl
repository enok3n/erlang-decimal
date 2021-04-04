-module(decimal_context).

-export([
  rounding/1,
  precision/1
  ]).

rounding(Context) ->
  proplists:get_value(rounding, Context, round_half_up).

precision(Context) ->
  proplists:get_value(precision, Context, 9).
