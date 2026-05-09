#dec2score.decimal
#dec2score.result
#dec2score.tmp_decimal

execute if score #dec2bit.digit_index sml matches 9 if function smile_math:float/dec2bit/dec2score/reset run return 0
execute if score #dec2bit.digit_index sml matches 0..8 store result score #dec2score.tmp_decimal sml run function smile_math:float/dec2bit/dec2score/get_score_fm_digit with storage float: dec2bit

scoreboard players operation #dec2score.decimal sml += #dec2score.tmp_decimal sml
scoreboard players add #dec2bit.digit_index sml 1
execute store result storage float: dec2bit.digit_index int 1.0 run scoreboard players get #dec2bit.digit_index sml
function smile_math:float/dec2bit/dec2score/get_score_fm_dec

return run scoreboard players get #dec2score.result sml