#add.x_exp
#add.y_exp
#add.x_sign
#add.y_sign

execute store result score #add.x_exp sml run data get storage float: add.input.x.exponent
execute store result score #add.y_exp sml run data get storage float: add.input.y.exponent

execute store result score #add.x_sign sml run data get storage float: add.input.x.sign
execute store result score #add.y_sign sml run data get storage float: add.input.y.sign

execute unless score #add.x_sign sml = #add.y_sign sml run return fail

#x exp > y exp
execute if score #add.x_exp sml >= #add.y_exp sml run data modify storage float: add.shifter set from storage float: add.input
execute if score #add.x_exp sml < #add.y_exp sml run data modify storage float: add.shifter.x set from storage float: add.input.y
execute if score #add.x_exp sml < #add.y_exp sml run data modify storage float: add.shifter.y set from storage float: add.input.x

function smile_math:float/add/shifter/shifter

data modify storage float: add.output.fraction set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
function smile_math:float/add/calc/calc_bit {current_index:24}

function smile_math:float/add/normalize

execute if score #add.x_sign sml matches 0 run data modify storage float: add.output.sign set value 0
execute if score #add.x_sign sml matches 1 run data modify storage float: add.output.sign set value 1