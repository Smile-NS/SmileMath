#dec2score.digit_index
#dec2score.decimal
#dec2score.result
#dec2score.tmp_decimal

execute if score #dec2score.digit_index sml matches 9 if function smile_math:float/parse/decimal/dec2score/reset run return 0
execute if score #dec2score.digit_index sml matches 0..8 store result score #dec2score.tmp_decimal sml run function smile_math:float/parse/decimal/dec2score/get_score_fm_digit with storage float: dec2score

scoreboard players operation #dec2score.decimal sml += #dec2score.tmp_decimal sml
scoreboard players add #dec2score.digit_index sml 1
execute store result storage float: dec2score.digit_index int 1.0 run scoreboard players get #dec2score.digit_index sml
function smile_math:float/parse/decimal/dec2score/get_score_fm_split_dec

return run scoreboard players get #dec2score.result sml