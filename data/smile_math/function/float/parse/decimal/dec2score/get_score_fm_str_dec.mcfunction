#dec2score.decimal

scoreboard players set #dec2score.decimal sml 0

function smile_math:float/parse/decimal/split_dec_part with storage float:
function smile_math:float/parse/decimal/split {start:0, end:1}
execute store result score #dec2score.decimal sml run function smile_math:float/parse/decimal/dec2score/get_score_fm_split_dec

return run scoreboard players get #dec2score.decimal sml