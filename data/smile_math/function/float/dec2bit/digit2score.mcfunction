#dec2bit.digit2score.scoreDigit

$execute store result score #dec2bit.digit2score.score_digit m_count run data get storage float: split_decimal[$(digit_index)]
scoreboard players operation #dec2bit.digit2score.score_digit m_count *= #dec2bit.scale m_count
scoreboard players operation #dec2bit.scale m_count /= #10 m_count
return run scoreboard players get #dec2bit.digit2score.score_digit m_count