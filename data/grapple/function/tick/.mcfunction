# 浮きを投げたプレイヤーで実行
  execute as @a[scores={Grapple.Use_Rod=1}] run function grapple:player/

# マーカーで実行
  execute as @e[type=marker,tag=grapple] at @s run function grapple:tick/marker

# 浮きが無ければ実行
  execute unless entity @e[type=fishing_bobber] as @p at @s run function grapple:leap/

# 浮きで実行
  execute as @e[type=fishing_bobber] run function grapple:tick/bobber
