# マーカー、プレイヤーの位置を保存
  data modify storage s_grapple: Pos.Marker set from entity @e[type=marker,tag=grapple,tag=trigger,limit=1] Pos
  data modify storage s_grapple: Pos.Player set from entity @s Pos

# 計算
  execute store result score $x hb.Motion run data get storage s_grapple: Pos.Marker[0] 1800
  execute store result score $y hb.Motion run data get storage s_grapple: Pos.Marker[1] 1800
  execute store result score $z hb.Motion run data get storage s_grapple: Pos.Marker[2] 1800
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
  playsound entity.zombie.infect player @s ~ ~ ~ 0.5 2

# データの明示的削除
  data remove storage s_grapple: Pos

# アイテムの耐久値復帰
  execute if items entity @s weapon.mainhand fishing_rod[custom_data~{"S_Grapple":1b}] run item modify entity @s weapon.mainhand {"function":"set_components","components":{"damage":0}}
  execute if items entity @s weapon.offhand fishing_rod[custom_data~{"S_Grapple":1b}] run item modify entity @s weapon.offhand {"function":"set_components","components":{"damage":0}}
