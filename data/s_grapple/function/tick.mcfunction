# 浮きで実行
  execute as @e[type=fishing_bobber] run function s_grapple:bobber/tick

# 浮きを投げた人で検知
  execute as @a[scores={S_Grapple.Use_Rod=1..}] run function s_grapple:player/tick

# Dummyのリセット
  scoreboard players reset @a S_Grapple.Dummy
