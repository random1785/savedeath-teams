execute as @a at @s run playsound minecraft:entity.generic.explode
execute as @a run scoreboard players operation @s health -= @s calc
scoreboard players reset @a calc
scoreboard players reset @a[tag=a] score
execute as @a[scores={health=1..500}] run tellraw @a [{"color":"aqua","selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"health"}},{"text":" health left!"}]
execute store result score @e[type=minecraft:armor_stand,limit=1,tag=score] left run execute if entity @a[scores={health=1..}]
# execute as @e[type=minecraft:armor_stand,limit=1,tag=score] run scoreboard players operation @s right = @s left
# scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=score] right 1
scoreboard players set @e[type=minecraft:armor_stand,limit=1,tag=score] right 1
execute if entity @a[scores={team=1,health=1..}] run scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=score] right 1
execute if entity @a[scores={team=2,health=1..}] run scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=score] right 1
execute if entity @a[scores={team=3,health=1..}] run scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=score] right 1
execute if entity @a[scores={team=4,health=1..}] run scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=score] right 1
execute if entity @a[scores={team=5,health=1..}] run scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=score] right 1
execute if entity @a[scores={team=6,health=1..}] run scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=score] right 1
execute if entity @a[scores={team=7,health=1..}] run scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=score] right 1
execute as @a[scores={health=-200..1}] run execute unless score @s gone matches 1 run tellraw @a [{"bold":true,"color":"dark_red","selector":"@s"},{"text":" has"},{"text":" been eliminated and has finished rank #"},{"score":{"name":"@e[type=minecraft:armor_stand,limit=1,tag=score]","objective":"right"}},{"text":"."}]
scoreboard players set @a[scores={health=..1}] gone 1


execute unless score @e[type=minecraft:armor_stand,limit=1,tag=score] right matches ..2 run schedule function a:zzzstart 3s
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] right matches 2 run execute as @r[scores={health=1..}] run title @a title [{"color":"gold","text":"Team "},{"score":{"name":"@s","objective":"team"}},{"text":" is the winner!"}]
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] right matches 2 run execute as @a[scores={health=1..}] run tellraw @a [{"color":"gold","selector":"@s"},{"text":" is a winner!"}]
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] right matches 2 run execute at @a run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 0.5
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] right matches 2 run tag @s remove newcheck
execute as @a run scoreboard players operation @s temp = @s health
scoreboard objectives remove health
scoreboard objectives add health dummy
execute as @a run scoreboard players operation @s health = @s temp
scoreboard players reset * temp
scoreboard objectives setdisplay sidebar health

scoreboard players reset @a glass