#dec2score.score_digit
#dec2score.scale

$execute store result score #dec2score.score_digit sml run data get storage float: split_decimal[$(digit_index)]
scoreboard players operation #dec2score.score_digit sml *= #dec2score.scale sml
scoreboard players operation #dec2score.scale sml /= #10 sml
return run scoreboard players get #dec2score.score_digit sml