#dec2bit.scale
#dec2bit.digit_index
#dec2bit.decimal

say hi
#execute if score #dec2bit.decimal sml matches 50000000.. run data modify storage float: binary_decimal append value 1
#execute unless score #dec2bit.decimal sml matches 50000000.. run data modify storage float: binary_decimal append value 0