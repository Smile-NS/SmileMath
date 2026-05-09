scoreboard objectives add m_count dummy
scoreboard players set #0 m_count 0
scoreboard players set #1 m_count 1
scoreboard players set #2 m_count 2
scoreboard players set #10 m_count 10
scoreboard players set #23 m_count 23

data modify storage float: split_decimal set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

function mcmath:float/dec2bit/reset