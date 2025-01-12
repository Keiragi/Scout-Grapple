# 炎上状態なら使用不可
  execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"flags":{"is_on_fire":true}}} \
  run return run title @s actionbar {"text":"炎上中は使用できません","color":"red"}

# プレイヤーの位置を保存
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Player set from entity @s Pos

# 計算
  execute store result score $x hb.Motion run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Bobber[0] 1800
  execute store result score $y hb.Motion run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Bobber[1] 1800
  execute store result score $z hb.Motion run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Bobber[2] 1800
  execute store result score $x S_Grapple.Dummy run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Player[0] 1800
  execute store result score $y S_Grapple.Dummy run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Player[1] 1800
  execute store result score $z S_Grapple.Dummy run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos.Player[2] 1800
  scoreboard players operation $x hb.Motion -= $x S_Grapple.Dummy
  scoreboard players operation $y hb.Motion -= $y S_Grapple.Dummy
  scoreboard players operation $z hb.Motion -= $z S_Grapple.Dummy
  scoreboard players add $y hb.Motion 1000

# 不要なデータの削除
  data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Pos

# Motionの実行
  function #p_motion:xyz

# 演出
  execute at @s run playsound entity.zombie.infect player @s ~ ~ ~ 0.5 2
