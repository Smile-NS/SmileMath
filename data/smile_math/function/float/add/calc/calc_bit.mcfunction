#calc.current_index
#calc.x_bit
#calc.y_bit
#calc.result_bit

$scoreboard players set #calc.current_index sml $(current_index)
execute if score #calc.current_index sml matches 0 run return 1

$execute store result score #calc.x_bit sml run data get storage float: add.shifter.x.fraction[$(current_index)] 1.0 
$execute store result score #calc.y_bit sml run data get storage float: add.shifter.y.fraction[$(current_index)] 1.0 
$execute store result score #calc.result_bit sml run data get storage float: add.output.fraction[$(current_index)] 1.0 

scoreboard players operation #calc.x_bit sml += #calc.y_bit sml
scoreboard players operation #calc.result_bit sml += #calc.x_bit sml
execute unless score #calc.result_bit sml matches 2.. run data modify storage float: add.tmp.bit set value 0
execute if score #calc.result_bit sml matches 2.. run data modify storage float: add.tmp.bit set value 1

scoreboard players operation #calc.result_bit sml %= #2 sml
$execute if score #calc.result_bit sml matches 0 run data modify storage float: add.output.fraction[$(current_index)] set value 0
$execute if score #calc.result_bit sml matches 1 run data modify storage float: add.output.fraction[$(current_index)] set value 1

scoreboard players remove #calc.current_index sml 1
execute store result storage float: add.tmp.current_index int 1.0 run scoreboard players get #calc.current_index sml
function smile_math:float/add/calc/set_bit with storage float: add.tmp

function smile_math:float/add/calc/calc_bit with storage float: add.tmp