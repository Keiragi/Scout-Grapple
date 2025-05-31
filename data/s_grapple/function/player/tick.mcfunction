## 中断処理
  # Dummyが1なら浮きがあるので終了
    execute if score @s S_Grapple.Dummy matches 1.. run return fail

  # Grappleを持っていなければ終了
    execute unless items entity @s weapon.* fishing_rod[custom_data~{S_Grapple:1b}] run return fail


# バージョンを戻すと表示が変わるのでGrappleの更新
  execute if items entity @s weapon.mainhand fishing_rod[custom_data~{S_Grapple:1b}] run loot replace entity @s weapon.mainhand loot s_grapple:grapple
  execute if items entity @s weapon.offhand fishing_rod[custom_data~{S_Grapple:1b}] run loot replace entity @s weapon.offhand loot s_grapple:grapple

# スコアのリセット
  scoreboard players reset $success S_Grapple.Dummy
  scoreboard players reset @s S_Grapple.Use_Rod

# 浮きの位置からブロック、距離をチェック
  function #oh_my_dat:please
  # マクロ用に座標を分割して実行
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.x set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Bobber[0]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.y set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Bobber[1]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.z set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Bobber[2]
    function s_grapple:player/positioned with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos


# 実行
  execute if score $success S_Grapple.Dummy matches 1 run function s_grapple:player/leap
