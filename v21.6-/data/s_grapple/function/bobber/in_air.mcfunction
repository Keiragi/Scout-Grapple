# 2tick連続で空中判定ならリセットを通す
  execute on origin if entity @s[tag=s_grapple.hooked.lock] run return run tag @s remove s_grapple.hooked.lock

# タグのリセット
  execute on origin run tag @s remove s_grapple.hooked

# 接地時間のリセット
  scoreboard players reset @s S_Grapple.Dummy
