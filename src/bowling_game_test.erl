-module(bowling_game_test).
-include_lib("eunit/include/eunit.hrl").

gutter_game_test() ->
    Rolls = lists:duplicate(20, 0),
    ?assertEqual(0, bowling_game:score(Rolls)).
