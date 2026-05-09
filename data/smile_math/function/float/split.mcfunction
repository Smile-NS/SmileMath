#spilit.succeess
#spilit.start
#spilit.end

$execute store success score #split.success sml run data modify storage float: current_digit set string storage float: decimal $(start) $(end)
execute if score #split.success sml matches 0 run return run scoreboard players operation #decimalLen sml = #split.start sml

$execute store result storage float: split_decimal[$(start)] int 1.0 run function smile_math:float/char2digit

$scoreboard players set #split.start sml $(start)
$scoreboard players set #split.end sml $(end)

scoreboard players add #split.start sml 1
scoreboard players add #split.end sml 1

execute store result storage float: split.start int 1.0 run scoreboard players get #split.start sml
execute store result storage float: split.end int 1.0 run scoreboard players get #split.end sml

function smile_math:float/split with storage float: split
