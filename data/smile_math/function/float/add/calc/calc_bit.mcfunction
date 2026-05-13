#calc.current_index
#calc.x_bit
#calc.y_bit
#calc.output_bit
#calc.result_bit

$scoreboard players set #calc.current_index sml $(current_index)
execute if score #calc.current_index sml matches 0 run return 1

$execute store result score #calc.x_bit sml run data get storage float: add.x[$(current_digit)] 1.0 
$execute store result score #calc.y_bit sml run data get storage float: add.y[$(current_digit)] 1.0 
$execute store result score #calc.output_bit sml run data get storage float: add.output.fraction[$(current_digit)] 1.0 

scoreboard players operation #calc.x_bit sml += #calc.y_bit sml
execute store result score #calc.result_bit sml run scoreboard players operation #calc.x_bit sml += #calc.output_bit sml
execute if score #calc.result_bit sml matches 2.. store result score #calc.output_bit sml run scoreboard players operation #calc.result_bit sml %= #2 sml
