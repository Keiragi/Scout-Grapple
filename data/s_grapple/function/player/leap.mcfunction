# プレイヤーの位置を保存
  data modify storage s_grapple: Pos.Player set from entity @s Pos

# 計算
  execute store result score $x hb.Motion run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Bobber[0] 1800
  execute store result score $y hb.Motion run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Bobber[1] 1800
  execute store result score $z hb.Motion run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Bobber[2] 1800
  execute store result score $x S_Grapple.Dummy run data get storage s_grapple: Pos.Player[0] 1800
  execute store result score $y S_Grapple.Dummy run data get storage s_grapple: Pos.Player[1] 1800
  execute store result score $z S_Grapple.Dummy run data get storage s_grapple: Pos.Player[2] 1800
  scoreboard players operation $x hb.Motion -= $x S_Grapple.Dummy
  scoreboard players operation $y hb.Motion -= $y S_Grapple.Dummy
  scoreboard players operation $z hb.Motion -= $z S_Grapple.Dummy
  scoreboard players add $y hb.Motion 1000

# Motionの実行
  function #p_motion:xyz

# 演出
  execute at @s run playsound entity.zombie.infect player @s ~ ~ ~ 0.5 2

# データの明示的削除
  data remove storage s_grapple: Pos

# 進捗のリセット
  advancement revoke @s only s_grapple:hooked

# スコアのリセット
  scoreboard players reset @s S_Grapple.Use_Rod
  scoreboard players reset $success S_Grapple.Dummy
