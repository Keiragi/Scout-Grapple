# 常に浮きへ移動
  $tp @s $(target)

# 浮きが無ければ以下が実行
  $execute if entity $(target) run return fail
  tag @s add trigger
  $execute as $(player) at @s run function grapple:leap/
  kill @s
