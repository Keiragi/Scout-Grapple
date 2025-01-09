# データの初期化
  data remove storage s_grapple: Text

# アイテムディスプレイにセレクターの情報を入れる
  summon item_display ~ ~ ~ {"Tags":["get_uuid"],"view_range":0f,"width":0f,"height":0f}
  loot replace entity @e[type=item_display,tag=get_uuid,limit=1] contents loot s_grapple:resolve

# マクロ用にデータ移行し、Stringsを分割
  data modify storage s_grapple: name set from entity @e[type=item_display,tag=get_uuid,distance=..0.01,limit=1] item.components."minecraft:custom_name"
  function s_grapple:uuid/output with storage s_grapple:

# 削除
  data remove storage s_grapple: name
  kill @e[type=item_display,tag=get_uuid]
