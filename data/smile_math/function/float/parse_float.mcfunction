#スコアは(直前のディレクトリ名).(変数名)
#関数の初めにそこで定義される変数の一覧を書く
#内側のスコープで定義されたスコアは外側のスコープでは使えない
#外側のスコープで定義されたスコアは内側のスコープでも使える
#なお、「同一スコープ内」は関数およびそこで定義される変数が同一ディレクトリ内にあることを指す

#float.integer
#float.decimal
#float.dec_start
#float.exp
#float.sign

$data modify storage float: input set value $(input)

data remove storage float: output.fraction
scoreboard players set #float.exp sml 0

execute store result score #float.sign sml run function smile_math:float/get_sign
execute store result storage float: output.sign int 1.0 run scoreboard players get #float.sign sml

execute if score #float.sign sml matches 0 store result score #float.integer sml run data get storage float: input
execute if score #float.sign sml matches 1 store result score #float.integer sml run function smile_math:float/int2bit/n2p_int_part

execute store result storage float: integer int 1.0 run scoreboard players get #float.integer sml

execute store result score #float.dec_start sml run function smile_math:float/int2bit/get_int_len
execute if score #float.sign sml matches 1 run scoreboard players add #float.dec_start sml 1
scoreboard players add #float.dec_start sml 1
execute store result storage float: dec_start int 1.0 run scoreboard players get #float.dec_start sml

function smile_math:float/int2bit/int2bit

function smile_math:float/dec2bit/split_dec_part with storage float:

function smile_math:float/dec2bit/split {start:0, end:1}

execute store result score #float.decimal sml run function smile_math:float/dec2bit/dec2score/get_score_fm_dec
execute if score #float.integer sml matches 1.. run function smile_math:float/dec2bit/dec2bit
execute if score #float.integer sml matches 0 run function smile_math:float/dec2bit/small_dec2bit

execute store result storage float: output.exponent int 1.0 run scoreboard players get #float.exp sml
return run data get storage float: output
