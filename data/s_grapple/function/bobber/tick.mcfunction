## 中断処理
  # Grappleでなければ終了
    execute on origin unless items entity @s weapon.* fishing_rod[custom_data~{S_Grapple:1b}] \
    run return run scoreboard players reset @s S_Grapple.Use_Rod


# 浮きが存在している間Dummyを1にセットする\
  → 浮きが無くなれば空になる
  execute on origin run scoreboard players set @s S_Grapple.Dummy 1

# 投げ主の個人ストレージに浮きの座標を保存
  execute on origin run function #oh_my_dat:please
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Bobber set from entity @s Pos

# 浮きの接地を検知
  execute if data entity @s {OnGround:0b} run function s_grapple:bobber/in_air
  execute if data entity @s {OnGround:1b} run function s_grapple:bobber/on_ground
  # 接地して1分経つと消えるので検知終了
    execute if score @s S_Grapple.Dummy matches 1200 on origin \
    run scoreboard players reset @s S_Grapple.Use_Rod
