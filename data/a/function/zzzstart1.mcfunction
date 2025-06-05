title @a times 10 0 10
scoreboard players set @a death 17
execute as @a[tag=bozo] at @s run tp @a ~ ~ ~
effect give @a minecraft:mining_fatigue 15 255 true
effect give @a resistance 15 255 true
scoreboard players set @e[type=armor_stand,tag=score] score -300
scoreboard players set @e[type=armor_stand,tag=score] round 1
scoreboard players set @e[type=minecraft:armor_stand,tag=score] overkill 2500
scoreboard players set @e[type=minecraft:armor_stand,tag=score] fivehundred 500
scoreboard players set @e[type=minecraft:armor_stand,tag=score] limit -69420
scoreboard players set @a glass 0
schedule function a:zzzstart2 60t
schedule function a:zzzpick 30t
tag @a remove a
tag @a remove b
tag @a remove c
tag @a remove die