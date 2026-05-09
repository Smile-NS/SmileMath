#dec2bit.scale
#dec2bit.digit_index
#dec2bit.decimal

execute store result score #dec2bit.decimal sml run function smile_math:float/dec2bit/dec2score/get_score_fm_dec

execute if score #dec2bit.decimal sml matches 50000000.. run data modify storage float: binary_decimal append value 1
execute unless score #dec2bit.decimal sml matches 50000000.. run data modify storage float: binary_decimal append value 0