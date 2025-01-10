# 手にGrappleを持っていれば浮きの引っかかりに音を鳴らす
  execute if items entity @s weapon.* fishing_rod[custom_data~{"S_Grapple":1b}] \
  run playsound block.iron_door.open player @s ~ ~ ~ 0.5 2
