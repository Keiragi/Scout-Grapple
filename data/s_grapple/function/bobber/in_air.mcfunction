# 進捗のリセット
  execute on origin run advancement revoke @s[advancements={s_grapple:hooked=true}] only s_grapple:hooked

# 接地時間のリセット
  scoreboard players reset @s S_Grapple.Dummy
