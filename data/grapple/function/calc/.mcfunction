data modify storage temp: Pos.bobber set from entity @n[type=marker,tag=scout] Pos
data modify storage temp: Pos.Player set from entity @p Pos

execute store result score $x hb.Motion run data get storage temp: Pos.bobber[0] 2500
execute store result score $y hb.Motion run data get storage temp: Pos.bobber[1] 2500
execute store result score $z hb.Motion run data get storage temp: Pos.bobber[2] 2500

scoreboard players add $y hb.Motion 1000

execute store result score $PlayerX VectorCalculation run data get storage temp: Pos.Player[0] 2500
execute store result score $PlayerY VectorCalculation run data get storage temp: Pos.Player[1] 2500
execute store result score $PlayerZ VectorCalculation run data get storage temp: Pos.Player[2] 2500

scoreboard players operation $x hb.Motion -= $PlayerX VectorCalculation
scoreboard players operation $y hb.Motion -= $PlayerY VectorCalculation
scoreboard players operation $z hb.Motion -= $PlayerZ VectorCalculation

#scoreboard players set $y hb.Motion 10000

function #p_motion:xyz

playsound entity.zombie.infect player @s ~ ~ ~ 0.5 2
