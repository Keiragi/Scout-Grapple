# 浮きが接地したら主に進捗を渡す
  execute if data entity @s {"OnGround":0b} on origin run advancement revoke @s only grapple:hooked
  execute if data entity @s {"OnGround":1b} on origin run advancement grant @s only grapple:hooked
