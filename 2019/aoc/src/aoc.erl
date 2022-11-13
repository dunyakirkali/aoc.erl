%%%-------------------------------------------------------------------
%%% @author dunyakirkali
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. Dec 2020 21:40
%%%-------------------------------------------------------------------
-module(aoc).
-author("dunyakirkali").

%% API
-export([input/1, run/1]).

run(N) ->
  Mod = list_to_atom("day" ++ io_lib:format("~2..0B", [N])),
  {Mod:p1(), Mod:p2()}.

input(Day) ->
  Priv = code:priv_dir(aoc),
  File = filename:join([Priv, Day]),
  {ok, Bin} = file:read_file(File),
  unicode:characters_to_list(Bin).