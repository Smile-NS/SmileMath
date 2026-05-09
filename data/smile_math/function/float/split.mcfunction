#spilit.succeess
#spilit.start
#spilit.end

$execute store success score #split.success m_count run data modify storage float: current_digit set string storage float: decimal $(start) $(end)
execute if score #split.success m_count matches 0 run return run scoreboard players operation #decimalLen m_count = #split.start m_count

$execute store result storage float: split_decimal[$(start)] int 1.0 run function mcmath:float/char2digit

$scoreboard players set #split.start m_count $(start)
$scoreboard players set #split.end m_count $(end)

scoreboard players add #split.start m_count 1
scoreboard players add #split.end m_count 1

execute store result storage float: split.start int 1.0 run scoreboard players get #split.start m_count
execute store result storage float: split.end int 1.0 run scoreboard players get #split.end m_count

function mcmath:float/split with storage float: split
