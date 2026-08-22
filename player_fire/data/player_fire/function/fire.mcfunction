scoreboard players set #ignite bot.fire 0
execute if data entity @s equipment.body if data entity @s equipment.body.components."minecraft:enchantments"."player_fire:ignite" store result score #ignite bot.fire run data get entity @s equipment.body.components."minecraft:enchantments"."player_fire:ignite"
execute unless data entity @s equipment.body run item replace entity @s armor.body with stone[equippable={slot:"body",equip_sound:"intentionally_empty"},enchantments={binding_curse:1,vanishing_curse:1}]
scoreboard players operation $time bot.fire += #ignite bot.fire
execute if score $time bot.fire matches 256.. run scoreboard players set $time bot.fire 255
execute store result storage bot:ignite macro.ignite_time int 1 run scoreboard players get $time bot.fire
scoreboard players operation $time bot.fire -= #ignite bot.fire
function player_fire:add_ignite with storage bot:ignite macro