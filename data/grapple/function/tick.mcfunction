
execute as @e[type=marker,tag=scout] run tp @s @n[type=fishing_bobber]

execute unless entity @e[type=fishing_bobber] as @p at @s run function grapple:scout/

execute as @e[type=fishing_bobber,nbt={OnGround:1b}] run advancement grant @p only grapple:hooked

execute at @e[type=marker] run particle electric_spark
