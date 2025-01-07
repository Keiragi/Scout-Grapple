execute if entity @s[advancements={grapple:fishing=true}] run function grapple:calc/

kill @e[type=marker,tag=scout]

advancement revoke @s only grapple:fishing
advancement revoke @s only grapple:hooked
