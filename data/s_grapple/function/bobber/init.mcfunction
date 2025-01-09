# UUIDの取得
  function s_grapple:uuid/string_uuid

# マーカーにデータをセット
  execute summon marker run function s_grapple:bobber/set_data

# プレイヤーの名前を取得
  execute on origin run function s_grapple:uuid/string_uuid
  data modify entity @e[type=marker,distance=..0.01,limit=1] data.player set from storage s_grapple: Text.insertion

# 記録
  tag @s add initialized
