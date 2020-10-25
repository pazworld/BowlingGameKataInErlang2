-module(bowling_game).
-export([score/1]).

score([]) -> 0;

score([Roll1, Roll2 | Rest]) -> Roll1 + Roll2 + score(Rest).
