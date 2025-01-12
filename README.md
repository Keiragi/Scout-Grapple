# Scout-Grapple

### <font color=#00FFFF>**You are the feet!**</font>
Annihilationのクラス“Scout”のGrappleを再現するデータパックです。

## 対応バージョン
Minecraft Java Edition<br>
- 1.21.4

## 使い方

### 入手方法
```mcfunction
コマンドでの入手
/loot give @p loot s_grapple:grapple

クラフトでの入手
棒*3、糸、トリップワイヤーフックを釣竿のように並べることでクラフトできます
```

### 使用方法
使用して浮きを投げ、浮きが"固体かつ当たり判定のあるブロック"の上面や底面に触れているときに再度使用して浮きを引くと、その方向へ跳躍します。

## 原作との変更点
- 当たり判定の無いブロックは跳躍が発動しないように制限を追加
- 浮きの接地時に音が鳴る仕様を追加
- 使用不可の旨を伝えるメッセージがチャットからアクションバーに変更
- Hookが掛からなかった場合のメッセージを削除
- 戦闘中に使用不可となる制限を削除
- 使用時に現在の慣性がかかった跳躍をするように変更

## クレジット
- Hirobao_Player_Motion 【 [CC-0](data/p_motion/LICENSE) 】
  - [CustomEnchant_PlayerMotion](https://github.com/Hirobao1/CustomEnchant_PlayerMotion) / [ひろばお](https://x.com/Hirobao1)様
- OhMyDat 【 [MIT-License](data/oh_my_dat/LICENSE) 】
  - [OhMyDat](https://github.com/Ai-Akaishi/OhMyDat) / [赤石愛](https://x.com/AiAkaishi)様

## 免責事項
本データパックを導入することで、ワールドに不具合や予期しない問題が発生した場合の責任は負いかねます。ご利用にあたっては、十分ご注意のうえ自己責任でご使用ください。

また、マルチプレイ環境での利用時に、他プレイヤーと干渉し、正常に動作しないケースがあります。このため、マルチプレイでの確実な動作は保証できません。<br>
これについては現在調査を進めておりますが、マルチプレイ環境で不具合の具体的な状況がご連絡いただけますと幸いです。

## バグ報告、要望はこちら
  - [制作者X](https://x.com/S_Keiragi)
