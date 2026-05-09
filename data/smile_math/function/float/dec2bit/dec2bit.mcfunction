#dec2bit.scale
#dec2bit.digit_index
#dec2bit.count

execute if score #dec2bit.count sml matches 24 run return run scoreboard players set #dec2bit.count sml 0

scoreboard players operation #dec2bit.decimal sml *= #2 sml

execute if score #dec2bit.decimal sml matches 1000000000.. run data modify storage float: binary_decimal append value 1
execute unless score #dec2bit.decimal sml matches 1000000000.. run data modify storage float: binary_decimal append value 0

scoreboard players operation #dec2bit.decimal sml %= #10^9 sml

scoreboard players add #dec2bit.count sml 1

function smile_math:float/dec2bit/dec2bit