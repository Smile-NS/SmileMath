#int2bit.input_len

data modify storage float: str_input set string storage float: input
execute store result score #int2bit.input_len sml run data get storage float: str_input

execute if score #parse.dec_start sml > #int2bit.input_len sml run return 1
return 0
