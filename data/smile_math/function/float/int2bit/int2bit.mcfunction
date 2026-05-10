#int2bit.bit
#int2bit.integer

#今のところ整数部分は9桁までを想定(固定)

execute unless score #int2bit.integer sml matches 1.. run scoreboard players operation #int2bit.integer sml = #float.integer sml

scoreboard players operation #int2bit.bit sml = #int2bit.integer sml
scoreboard players operation #int2bit.bit sml %= #2 sml
scoreboard players operation #int2bit.integer sml /= #2 sml

execute if score #int2bit.bit sml matches 0 run data modify storage float: fraction prepend value 0
execute if score #int2bit.bit sml matches 1 run data modify storage float: fraction prepend value 1

execute if score #int2bit.integer sml matches 1.. run function smile_math:float/int2bit/int2bit