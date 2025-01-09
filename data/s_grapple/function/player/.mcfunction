# Grappleを持っていなければ終了
  execute unless items entity @s weapon.* fishing_rod[custom_data~{"S_Grapple":1b}] run return run scoreboard players reset @a S_Grapple.Use_Rod

# 浮きに対して実行
  execute anchored eyes positioned ^ ^ ^ as @e[type=fishing_bobber,tag=!initialized,limit=1] run function s_grapple:bobber/init

# クリエイティブなら実行
  execute if entity @s[gamemode=creative] run return run function s_grapple:player/creative

# 記録のリセット
  scoreboard players reset @a S_Grapple.Use_Rod
