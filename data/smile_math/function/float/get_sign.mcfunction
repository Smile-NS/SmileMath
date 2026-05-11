data modify storage float: head_char set string storage float: input 0 1
execute if data storage float: {head_char:"-"} run return 1
execute unless data storage float: {head_char:"-"} run return 0