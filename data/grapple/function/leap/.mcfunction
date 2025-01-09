# 釣り竿を引いていればジャンプの計算+実行
  execute if entity @s[advancements={grapple:fishing=true}] run function grapple:leap/calc

# マーカー削除
  kill @e[type=marker,tag=grapple]

# 進捗のリセット
  advancement revoke @s only grapple:fishing
  advancement revoke @s only grapple:hooked
