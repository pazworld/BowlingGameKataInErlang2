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
