# 上下の当たり判定のあるブロックを検知
  $execute positioned $(x) $(y) $(z) unless block ~ ~0.6 ~ #s_grapple:non_hookable run return run scoreboard players set $success S_Grapple.Dummy 1
  $execute positioned $(x) $(y) $(z) unless block ~ ~-0.2 ~ #s_grapple:non_hookable run return run scoreboard players set $success S_Grapple.Dummy 1
  # ブロック端は座標が変わるので接地でも検知
    execute if entity @s[advancements={s_grapple:hooked=true}] run return run scoreboard players set $success S_Grapple.Dummy 1


# 上記で無ければリセット
  scoreboard players reset $success S_Grapple.Dummy
  scoreboard players reset @s S_Grapple.Use_Rod
