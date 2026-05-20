#add.exp
#add.head_bit

execute store result score #add.exp sml run data get storage float: add.shifter.x.exponent
execute store result score #add.head_bit sml run data get storage float: add.output.fraction[0]

execute if score #add.head_bit sml matches 1 run scoreboard players add #add.exp sml 1
execute store result storage float: add.output.exponent int 1.0 run scoreboard players get #add.exp sml

data remove storage float: add.output.fraction[0]
