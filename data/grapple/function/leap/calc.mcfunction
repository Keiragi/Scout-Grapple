# マーカー、プレイヤーの位置を保存
  data modify storage grapple: Pos.Marker set from entity @n[type=marker,tag=grapple] Pos
  data modify storage grapple: Pos.Player set from entity @p Pos

# 計算
  execute store result score $x hb.Motion run data get storage grapple: Pos.Marker[0] 1800
  execute store result score $y hb.Motion run data get storage grapple: Pos.Marker[1] 1800
  execute store result score $z hb.Motion run data get storage grapple: Pos.Marker[2] 1800
  execute store result score $x Grapple.Dummy run data get storage grapple: Pos.Player[0] 1800
  execute store result score $y Grapple.Dummy run data get storage grapple: Pos.Player[1] 1800
  execute store result score $z Grapple.Dummy run data get storage grapple: Pos.Player[2] 1800
  scoreboard players operation $x hb.Motion -= $x Grapple.Dummy
  scoreboard players operation $y hb.Motion -= $y Grapple.Dummy
  scoreboard players operation $z hb.Motion -= $z Grapple.Dummy
  scoreboard players add $y hb.Motion 1000

# Motionの実行
  function #p_motion:xyz

# 演出
  playsound entity.zombie.infect player @s ~ ~ ~ 0.5 2

# データの明示的削除
  data remove storage grapple: Pos

# アイテムの耐久値復帰
  execute if items entity @s weapon.mainhand fishing_rod[custom_data~{"Grapple":1b}] \
  run item modify entity @s weapon.mainhand {"function":"set_components","components":{"damage":0}}
  execute if items entity @s weapon.offhand fishing_rod[custom_data~{"Grapple":1b}] \
  run item modify entity @s weapon.offhand {"function":"set_components","components":{"damage":0}}
