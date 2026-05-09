#dec2bit.dec2score.decimal
#dec2bit.dec2score.tmp_decimal

execute if score #dec2bit.digit_index m_count matches 9 if function mcmath:float/dec2bit/reset run return run scoreboard players get #dec2bit.dec2score.decimal m_count

execute if score #dec2bit.digit_index m_count matches 0..8 store result score #dec2bit.dec2score.tmp_decimal m_count run function mcmath:float/dec2bit/digit2score with storage float: dec2bit
scoreboard players operation #dec2bit.dec2score.decimal m_count += #dec2bit.dec2score.tmp_decimal m_count
scoreboard players add #dec2bit.digit_index m_count 1
execute store result storage float: dec2bit.digit_index int 1.0 run scoreboard players get #dec2bit.digit_index m_count
function mcmath:float/dec2bit/dec2score