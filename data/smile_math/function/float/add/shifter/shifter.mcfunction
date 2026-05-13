#shifter.x_exp
#shifter.y_exp
#shifter.count
#shifter.exp_diff

execute if score #shifter.count sml matches 0 run function smile_math:float/add/shifter/init

execute if score #shifter.count sml = #shifter.exp_diff sml run return run function smile_math:float/add/shifter/reset

data modify storage float: add.y.fraction prepend value 0
scoreboard players add #shifter.count sml 1

function smile_math:float/add/shifter/shifter