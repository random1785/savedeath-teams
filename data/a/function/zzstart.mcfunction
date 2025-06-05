gamerule doImmediateRespawn true
scoreboard players set @a death 1785
time set 10000
clear @a
effect clear @a
kill @a
execute as @a at @s run playsound minecraft:block.trial_spawner.ominous_activate
title @a title {"text":"game starting!","color":"green"}
kill @e[type=armor_stand,tag=score]
kill @e[type=armor_stand,tag=start]
summon armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0
scoreboard players set @e[type=armor_stand,tag=score] multi 100
scoreboard players set @e[type=armor_stand,tag=score] two 2
scoreboard players set @e[type=armor_stand,tag=score] five 5
tag @e[type=armor_stand,tag=score] add newcheck
tag @a remove a
tag @a remove b
tag @a remove c
tag @a remove die
schedule function a:zzzstart1 20t
schedule function a:zzzstart0 20t
schedule function a:zzzstart00 2t
gamemode survival @a
scoreboard players set @a health 200
scoreboard players set @a temp 200
scoreboard players reset @a gone

# disables team trigger
execute as @a run trigger t1 add 0
execute as @a run trigger t2 add 0
execute as @a run trigger t3 add 0
execute as @a run trigger t4 add 0
execute as @a run trigger t5 add 0
execute as @a run trigger t7 add 0
execute as @a run trigger t6 add 0