#スコアは(直前のディレクトリ名).(変数名)
#関数の初めにそこで定義される変数の一覧を書く
#内側のスコープで定義されたスコアは外側のスコープでは使えない
#外側のスコープで定義されたスコアは内側のスコープでも使える
#なお、「同一スコープ内」は関数およびそこで定義される変数が同一ディレクトリ内にあることを指す

#dec2bit.decimal

execute store result score #dec2bit.decimal sml run function smile_math:float/dec2bit/dec2score/get_score_fm_dec
function smile_math:float/dec2bit/dec2bit