-module(decimal_misc).

-export([is_finite/1, is_infinite/1, is_NaN/1, is_qNaN/1, is_signed/1, is_sNaN/1, is_zero/1]).

is_finite(X) ->
  not is_infinite(X) andalso not is_NaN(X).

is_infinite(X) ->
  element(2, X) =:= infinity.

is_NaN(X) ->
  is_qNaN(X) orelse is_sNaN(X).

is_qNaN(X) ->
  element(2, X) =:= qNaN.

is_signed(X) ->
  element(1, X) =:= 1.

is_sNaN(X) ->
  element(2, X) =:= sNaN.

is_zero(X) ->
  element(2, X) =:= 0.
