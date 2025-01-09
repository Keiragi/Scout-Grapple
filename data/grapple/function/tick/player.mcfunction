# Grappleを持っていれば実行
  execute if items entity @s weapon.* fishing_rod[custom_data~{"Grapple":1b}] \
  anchored eyes positioned ^ ^ ^ as @e[type=fishing_bobber,tag=!initialized,limit=1] \
  run function grapple:bobber/init

# 記録のリセット
  scoreboard players reset @a Grapple.Use_Rod
