execute as @e[type=fishing_bobber,tag=!passenger] at @s run function grapple:bobber/
scoreboard players reset @s fishing_rod
advancement revoke @s only grapple:thrown
