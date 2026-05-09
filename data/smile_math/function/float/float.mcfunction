#スコアは(直前のディレクトリ名).(変数名)
#関数の初めにそこで定義される変数の一覧を書く
#内側のスコープで定義されたスコアは外側のスコープでは使えない
#外側のスコープで定義されたスコアは内側のスコープでも使える
#なお、「同一スコープ内」は関数およびそこで定義される変数が同一ディレクトリ内にあることを指す

#float.integer
#float.decimal
#float.dec_start

execute store result score #float.integer sml run data get storage float: input
execute store result storage float: integer int 1.0 run scoreboard players get #float.integer sml

function smile_math:float/int2bit/int2bit

execute store result score #float.dec_start sml run function smile_math:float/int2bit/get_int_len
scoreboard players add #float.dec_start sml 1
execute store result storage float: dec_start int 1.0 run scoreboard players get #float.dec_start sml

function smile_math:float/dec2bit/split_dec_part with storage float:

function smile_math:float/dec2bit/split {start:0, end:1}

execute store result score #float.decimal sml run function smile_math:float/dec2bit/dec2score/get_score_fm_dec
function smile_math:float/dec2bit/dec2bit