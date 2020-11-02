-module(bowling_game).
-export([score/1]).

% All rolls are processed
score([]) -> 0;

% 10th frame
score([Roll1, Roll2, Roll3]) -> Roll1 + Roll2 + Roll3;

% Strike
score([10, NextRoll1, NextRoll2 | Rest]) ->
    10 + NextRoll1 + NextRoll2 + score([NextRoll1, NextRoll2 | Rest]);

% Spare
score([Roll1, Roll2, NextRoll1 | Rest]) when Roll1 + Roll2 =:= 10 ->
    10 + NextRoll1 + score([NextRoll1 | Rest]);

% Not strike nor spare
score([Roll1, Roll2 | Rest]) -> Roll1 + Roll2 + score(Rest).
