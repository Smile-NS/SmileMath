#integer.floored_integer
#integer.tmp_integer

execute store result score #integer.floored_integer sml run data get storage float: input
execute store result score #integer.tmp_integer sml run data get storage float: input -10.0
scoreboard players operation #integer.tmp_integer sml /= #10 sml
scoreboard players operation #integer.floored_integer sml *= #-1 sml
execute unless score #integer.floored_integer sml = #integer.tmp_integer sml run scoreboard players remove #integer.floored_integer sml 1

return run scoreboard players get #integer.floored_integer sml