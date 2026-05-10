#dec2bit.digit_index
#dec2bit.frac_len

execute store result score #dec2bit.frac_len sml run data get storage float: fraction

execute if score #dec2bit.frac_len sml = #MAX_FRAC_LEN sml run return run say hi
scoreboard players operation #float.decimal sml *= #2 sml

execute if score #float.decimal sml matches 1000000000.. run data modify storage float: fraction append value 1
execute unless score #float.decimal sml matches 1000000000.. run data modify storage float: fraction append value 0

scoreboard players operation #float.decimal sml %= #10^9 sml

function smile_math:float/dec2bit/dec2bit