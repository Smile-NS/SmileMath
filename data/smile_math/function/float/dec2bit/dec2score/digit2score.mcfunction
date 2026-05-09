#dec2bit.digit2score.scoreDigit

$execute store result score #dec2bit.digit2score.score_digit sml run data get storage float: split_decimal[$(digit_index)]
scoreboard players operation #dec2bit.digit2score.score_digit sml *= #dec2bit.scale sml
scoreboard players operation #dec2bit.scale sml /= #10 sml
return run scoreboard players get #dec2bit.digit2score.score_digit sml