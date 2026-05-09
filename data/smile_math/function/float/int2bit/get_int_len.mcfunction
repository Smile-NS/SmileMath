#int2bit.int_len

data modify storage float: str_integer set string storage float: integer
execute store result score #int2bit.int_len sml run data get storage float: str_integer

return run scoreboard players get #int2bit.int_len sml
