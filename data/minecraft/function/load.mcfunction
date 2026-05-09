scoreboard objectives add sml dummy
scoreboard players set #0 sml 0
scoreboard players set #1 sml 1
scoreboard players set #2 sml 2
scoreboard players set #10 sml 10
scoreboard players set #23 sml 23

data modify storage float: split_decimal set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

function smile_math:float/dec2bit/dec2score/reset