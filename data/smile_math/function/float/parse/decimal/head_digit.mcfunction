execute if score #parse.decimal sml matches 1000000000.. run scoreboard players set #decimal.is_head_digit sml 1
execute if score #parse.decimal sml matches 1000000000.. run scoreboard players operation #parse.decimal sml %= #10^9 sml
scoreboard players remove #parse.exp sml 1
function smile_math:float/parse/decimal/small_dec2bit