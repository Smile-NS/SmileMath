#スコアは(直前のディレクトリ名).(変数名)
#関数の初めにそこで定義される変数の一覧を書く
#内側のスコープで定義されたスコアは外側のスコープでは使えない
#外側のスコープで定義されたスコアは内側のスコープでも使える
#なお、「同一スコープ内」は関数およびそこで定義される変数が同一ディレクトリ内にあることを指す

#parse.integer
#parse.decimal
#parse.dec_start
#parse.exp
#parse.sign
#parse.is_integer

$data modify storage float: input set value $(input)

data remove storage float: output.fraction
scoreboard players set #parse.exp sml 0

execute store result score #parse.sign sml run function smile_math:float/parse/get_sign
execute store result storage float: output.sign int 1.0 run scoreboard players get #parse.sign sml

execute if score #parse.sign sml matches 0 store result score #parse.integer sml run data get storage float: input
execute if score #parse.sign sml matches 1 store result score #parse.integer sml run function smile_math:float/parse/integer/n2p_int_part

execute store result storage float: integer int 1.0 run scoreboard players get #parse.integer sml

execute store result score #parse.dec_start sml run function smile_math:float/parse/integer/get_int_len
execute if score #parse.sign sml matches 1 run scoreboard players add #parse.dec_start sml 1
scoreboard players add #parse.dec_start sml 1
execute store result storage float: dec_start int 1.0 run scoreboard players get #parse.dec_start sml

execute store result score #parse.is_integer sml run function smile_math:float/parse/is_integer

function smile_math:float/parse/integer/int2bit

execute if score #parse.is_integer sml matches 0 store result score #parse.decimal sml run function smile_math:float/parse/decimal/dec2score/get_score_fm_str_dec
execute if score #parse.is_integer sml matches 1 run scoreboard players set #parse.decimal sml 0

execute if score #parse.integer sml matches 1.. run function smile_math:float/parse/decimal/dec2bit
execute if score #parse.integer sml matches 0 run function smile_math:float/parse/decimal/small_dec2bit

execute store result storage float: output.exponent int 1.0 run scoreboard players get #parse.exp sml
return run data get storage float: output
