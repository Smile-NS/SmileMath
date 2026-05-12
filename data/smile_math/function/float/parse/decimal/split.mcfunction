#decimal.succeess
#decimal.start
#decimal.end
#decimal.decLen

data remove storage float: current_digit

$execute store success score #decimal.success sml run data modify storage float: current_digit set string storage float: str_decimal $(start) $(end)
execute if score #decimal.success sml matches 0 run return run scoreboard players operation #decimal.decLen sml = #decimal.start sml

$execute store result storage float: split_decimal[$(start)] int 1.0 run function smile_math:float/parse/decimal/get_digit_fm_char

$scoreboard players set #decimal.start sml $(start)
$scoreboard players set #decimal.end sml $(end)

scoreboard players add #decimal.start sml 1
scoreboard players add #decimal.end sml 1

execute store result storage float: split.start int 1.0 run scoreboard players get #decimal.start sml
execute store result storage float: split.end int 1.0 run scoreboard players get #decimal.end sml

function smile_math:float/parse/decimal/split with storage float: split
