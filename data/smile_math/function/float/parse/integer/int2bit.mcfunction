#integer.bit
#integer.integer

#今のところ整数部分は9桁までを想定(固定)
execute unless score #integer.integer sml matches 1.. run scoreboard players operation #integer.integer sml = #parse.integer sml
execute if score #integer.integer sml matches 0 run return 1

scoreboard players operation #integer.bit sml = #integer.integer sml
scoreboard players operation #integer.bit sml %= #2 sml
scoreboard players operation #integer.integer sml /= #2 sml

execute if score #integer.integer sml matches 0 run return 1

scoreboard players add #parse.exp sml 1

execute if score #integer.bit sml matches 0 run data modify storage float: output.fraction prepend value 0
execute if score #integer.bit sml matches 1 run data modify storage float: output.fraction prepend value 1

execute if score #integer.integer sml matches 1.. run function smile_math:float/parse/integer/int2bit