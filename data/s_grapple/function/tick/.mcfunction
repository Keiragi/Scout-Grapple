# 浮きを投げたプレイヤーで実行
  execute as @a[scores={S_Grapple.Use_Rod=1}] run function s_grapple:player/

# マーカーで実行
  execute as @e[type=marker,tag=grapple] at @s run function s_grapple:tick/marker with entity @s data

# 浮きで実行
  execute as @e[type=fishing_bobber] run function s_grapple:tick/bobber
