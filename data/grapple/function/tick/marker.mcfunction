# 常に浮きへ移動
  tp @s @n[type=fishing_bobber,tag=initialized]

  #execute if score @s Grapple.Dummy = @n[type=fishing_bobber,tag=target] Grapple.Dummy \
at @n[type=fishing_bobber,tag=target] run tp @s ~ ~ ~

# デバッグ用 位置表示
#execute at @e[type=marker] run particle electric_spark
