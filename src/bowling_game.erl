-module(bowling_game).
-export([score/1]).

score(Rolls) -> lists:sum(Rolls).
