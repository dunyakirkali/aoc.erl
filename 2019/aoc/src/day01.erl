%%%-------------------------------------------------------------------
%%% @author dunyakirkali
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. Dec 2020 21:30
%%%-------------------------------------------------------------------
-module(day01).
-author("dunyakirkali").

%% API
-export([p1/0, p2/0]).

p1() ->
  String = aoc:input("day01"),
  Lines = string:tokens(String, "\n"),
  Ints = lists:map(fun(Line) -> list_to_integer(Line) end, Lines),
  Fuels = lists:map(fun(Int) -> fuel(Int) end, Ints),
  lists:sum(Fuels).

p2() ->
  String = aoc:input("day01"),
  Lines = string:tokens(String, "\n"),
  Ints = lists:map(fun(Line) -> list_to_integer(Line) end, Lines),
  Fuels = lists:map(fun(Int) -> rec_fuel(Int) end, Ints),
  lists:sum(Fuels).

fuel(Mass) ->
  trunc(Mass / 3) - 2.

rec_fuel(Mass) when Mass > 0 ->
  Fuel = fuel(Mass),
  Fuel + rec_fuel(Fuel);
rec_fuel(_) ->
  0.