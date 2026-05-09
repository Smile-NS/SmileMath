scoreboard players set #dec2bit.scale sml 100000000
scoreboard players set #dec2bit.digit_index sml 0
scoreboard players operation #dec2bit.dec2score.result sml = #dec2bit.dec2score.decimal sml
scoreboard players set #dec2bit.dec2score.decimal sml 0

data modify storage float: dec2bit.digit_index set value 0

return 1