execute store result score #shifter.x_exp sml run data get storage float: add.shifter.x.exponent
execute store result score #shifter.y_exp sml run data get storage float: add.shifter.y.exponent

execute store result score #shifter.exp_diff sml run scoreboard players operation #shifter.x_exp sml -= #shifter.y_exp sml

scoreboard players operation #shifter.y_exp sml += #shifter.exp_diff sml
execute store result storage float: add.shifter.y.exponent int 1.0 run scoreboard players get #shifter.y_exp sml

data modify storage float: add.shifter.x.fraction prepend value 1
data modify storage float: add.shifter.x.fraction prepend value 0

data modify storage float: add.shifter.y.fraction prepend value 1
data modify storage float: add.shifter.y.fraction prepend value 0