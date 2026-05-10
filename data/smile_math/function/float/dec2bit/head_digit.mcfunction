execute if score #float.decimal sml matches 1000000000.. run scoreboard players set #dec2bit.is_head_digit sml 1
execute if score #float.decimal sml matches 1000000000.. run scoreboard players operation #float.decimal sml %= #10^9 sml
scoreboard players remove #float.exp sml 1
function smile_math:float/dec2bit/small_dec2bit