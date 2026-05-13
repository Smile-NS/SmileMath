#add.x_exp
#add.y_exp

execute store result score #add.x_exp sml run data get storage float: add.input.x.exponent
execute store result score #add.y_exp sml run data get storage float: add.input.y.exponent

execute if score #add.x_exp sml >= #add.y_exp sml run data modify storage float: add.shifter set from storage float: add.input
execute if score #add.x_exp sml < #add.y_exp sml run data modify storage float: add.x set from storage float: add.input.y
execute if score #add.x_exp sml < #add.y_exp sml run data modify storage float: add.y set from storage float: add.input.x

function smile_math:float/add/shifter/shifter