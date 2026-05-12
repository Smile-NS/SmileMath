#decimal.frac_len
#decimal.is_head_digit

execute store result score #decimal.frac_len sml run data get storage float: output.fraction

execute if score #decimal.frac_len sml = #MAX_FRAC_LEN sml run return run scoreboard players set #decimal.is_head_digit sml 0
scoreboard players operation #parse.decimal sml *= #2 sml

execute unless score #decimal.is_head_digit sml matches 1 run return run function smile_math:float/parse/decimal/head_digit

execute if score #parse.decimal sml matches 1000000000.. run data modify storage float: output.fraction append value 1
execute unless score #parse.decimal sml matches 1000000000.. run data modify storage float: output.fraction append value 0

scoreboard players operation #parse.decimal sml %= #10^9 sml

function smile_math:float/parse/decimal/small_dec2bit