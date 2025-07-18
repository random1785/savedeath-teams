execute as @a[tag=bozo] at @s run spreadplayers ~ ~ 0 7 true @s
execute as @a[tag=bozo] run tp @a @s
tag @a remove bozo
execute at @a run fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:glass
execute at @a run setblock ~ ~ ~ air
execute at @a run setblock ~ ~2 ~ minecraft:glass
execute at @a run setblock ~ ~-1 ~ grass_block
execute at @a run setblock ~ ~-2 ~ grass_block
execute at @r run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"]}
gamemode spectator @a[scores={health=..0}]
tellraw @a[scores={health=..0}] {"color":"dark_gray","text":"You've already been eliminated, but you can still spectate the chaos!"}

# disables team trigger
execute as @a run trigger t1 add 0
execute as @a run trigger t2 add 0
execute as @a run trigger t3 add 0
execute as @a run trigger t4 add 0
execute as @a run trigger t5 add 0
execute as @a run trigger t7 add 0
execute as @a run trigger t6 add 0
execute as @a run trigger spec add 0