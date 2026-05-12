#integer.int_len

data modify storage float: str_integer set string storage float: integer
execute store result score #integer.int_len sml run data get storage float: str_integer

return run scoreboard players get #integer.int_len sml
