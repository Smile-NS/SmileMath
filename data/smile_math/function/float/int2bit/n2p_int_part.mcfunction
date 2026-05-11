#int2bit.floored_integer
#int2bit.tmp_integer

execute store result score #int2bit.floored_integer sml run data get storage float: input
execute store result score #int2bit.tmp_integer sml run data get storage float: input -10.0
scoreboard players operation #int2bit.tmp_integer sml /= #10 sml
scoreboard players operation #int2bit.floored_integer sml *= #-1 sml
execute unless score #int2bit.floored_integer sml = #int2bit.tmp_integer sml run scoreboard players remove #int2bit.floored_integer sml 1

return run scoreboard players get #int2bit.floored_integer sml