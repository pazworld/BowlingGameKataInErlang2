-module(bowling_game_test).
-include_lib("eunit/include/eunit.hrl").

gutter_game_test() ->
    Rolls = lists:duplicate(20, 0),
    ?assertEqual(0, bowling_game:score(Rolls)).

all_ones_test() ->
    Rolls = lists:duplicate(20, 1),
    ?assertEqual(20, bowling_game:score(Rolls)).

one_spare_test() ->
    Rolls = [5, 5, 3] ++ lists:duplicate(17, 0),
    ?assertEqual(16, bowling_game:score(Rolls)).

one_strike_test() ->
    Rolls = [10, 3, 4] ++ lists:duplicate(16, 0),
    ?assertEqual(24, bowling_game:score(Rolls)).

perfect_game_test() ->
    Rolls = lists:duplicate(12, 10),
    ?assertEqual(300, bowling_game:score(Rolls)).
