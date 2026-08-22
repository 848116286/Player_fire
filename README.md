# Player_fire
このデータパックを導入すると、指定時間プレイヤーを燃やすことができます。
## 対応バージョン
Minecraft JE 26.2

## 使い方
燃やしたい秒数をスコアにし、燃やしたい対象を実行者にします。

```
scoreboard players set $time bot.fire 2
execute as @p run function player_fire:fire
```
上の例では、最寄りのプレイヤーを2秒燃やす

```
scoreboard players set $time bot.fire 3
execute as @p run function player_fire:fire
execute as @p run function player_fire:fire
scoreboard players set $time bot.fire -4
execute as @p run function player_fire:fire
```
上の例では、最寄りのプレイヤーを2秒燃やす(3+3-4)

## 注意事項
- 256秒以上の場合255秒になります。
- プレイヤーのbodyスロットに付与されたエンチャントを使用しているため、function後にそのアイテムを削除した場合プレイヤーが燃えません。
