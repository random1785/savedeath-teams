execute as @a[scores={health=1..500}] run scoreboard players operation @s calc -= @e[type=armor_stand,tag=score] first
execute as @a[scores={health=1..500}] run scoreboard players operation @s calc /= @e[type=armor_stand,tag=score] five
execute as @a[scores={health=1..500}] run scoreboard players operation @s calc /= @e[type=armor_stand,tag=score] two
scoreboard players set @a[scores={calc=50..,health=1..500}] calc 50
scoreboard players set @a[scores={calc=..0,health=1..500}] calc 0
execute as @a[scores={health=1..500}] run tellraw @a [{"color":"gold","score":{"name":"@s","objective":"calc"}},{"text":" damage dealt to "},{"selector":"@s"},{"text":"!"}]
scoreboard players reset @e[type=minecraft:armor_stand,limit=1] first