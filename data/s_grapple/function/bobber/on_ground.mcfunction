# 接地時に音を鳴らす
  execute on origin unless entity @s["tag"=s_grapple.hooked] at @s run playsound block.iron_door.open player @s ~ ~ ~ 0.5 2
  execute on origin run tag @s add s_grapple.hooked

# 接地時間のカウント
  scoreboard players add @s S_Grapple.Dummy 1
