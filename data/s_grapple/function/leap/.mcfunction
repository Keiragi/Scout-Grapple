# 釣り竿を引いていればジャンプの計算+実行
  execute if entity @s[advancements={s_grapple:fishing=true}] run function s_grapple:leap/calc

# 進捗のリセット
  advancement revoke @s only s_grapple:fishing
  advancement revoke @s only s_grapple:hooked
