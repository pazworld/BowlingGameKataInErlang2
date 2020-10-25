-module(bowling_game).
-export([score/1]).

% All rolls are processed
score([]) -> 0;

% Spare
score([Roll1, Roll2, NextRoll1 | Rest]) when Roll1 + Roll2 =:= 10 ->
    10 + NextRoll1 + score([NextRoll1 | Rest]);

% Not Spare
score([Roll1, Roll2 | Rest]) -> Roll1 + Roll2 + score(Rest).
