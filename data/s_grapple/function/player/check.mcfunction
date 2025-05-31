## Grappleが使用可能か判定
  # 釣竿の射程距離外
    execute if entity @s[distance=32..] run return 0

  # 上下のブロック
    execute unless block ~ ~0.6 ~ #s_grapple:non_hookable run return 1
    execute unless block ~ ~-0.2 ~ #s_grapple:non_hookable run return 1

  # ブロック端は座標が変わるので接地でも検知
    execute if entity @s[tag=s_grapple.hooked] run return 1
