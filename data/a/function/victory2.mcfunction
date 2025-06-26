execute unless entity @a[tag=die,scores={death=17,health=1..500}] run schedule function a:zzzhealthcalc1 2s
execute unless entity @a[tag=die,scores={death=17,health=1..500}] run scoreboard players set @e[tag=score,type=armor_stand] round 0
execute unless entity @a[tag=die,scores={death=17,health=1..500}] run scoreboard players reset * temp
execute as @a[scores={death=18},tag=a] at @s run playsound minecraft:entity.player.levelup
execute as @a[scores={death=18},tag=a] run title @s title [{"text":"Time taken: ","color":"gold"},{"score":{"name":"@s","objective":"calc"}},{"text":" ticks"}]
execute as @a[scores={death=18},tag=a] run gamemode spectator @s
execute as @a[scores={death=18,team=1},tag=a,tag=!b,tag=!c,limit=1] run tellraw @a [{"color":"green","text":"Team 1 took "},{"score":{"name":"@s","objective":"calc"}},{"text":" ticks to die!"}]
execute as @a[scores={death=18,team=2},tag=a,tag=!b,tag=!c,limit=1] run tellraw @a [{"color":"green","text":"Team 2 took "},{"score":{"name":"@s","objective":"calc"}},{"text":" ticks to die!"}]
execute as @a[scores={death=18,team=3},tag=a,tag=!b,tag=!c,limit=1] run tellraw @a [{"color":"green","text":"Team 3 took "},{"score":{"name":"@s","objective":"calc"}},{"text":" ticks to die!"}]
execute as @a[scores={death=18,team=4},tag=a,tag=!b,tag=!c,limit=1] run tellraw @a [{"color":"green","text":"Team 4 took "},{"score":{"name":"@s","objective":"calc"}},{"text":" ticks to die!"}]
execute as @a[scores={death=18,team=5},tag=a,tag=!b,tag=!c,limit=1] run tellraw @a [{"color":"green","text":"Team 5 took "},{"score":{"name":"@s","objective":"calc"}},{"text":" ticks to die!"}]
execute as @a[scores={death=18,team=6},tag=a,tag=!b,tag=!c,limit=1] run tellraw @a [{"color":"green","text":"Team 6 took "},{"score":{"name":"@s","objective":"calc"}},{"text":" ticks to die!"}]
execute as @a[scores={death=18,team=7},tag=a,tag=!b,tag=!c,limit=1] run tellraw @a [{"color":"green","text":"Team 7 took "},{"score":{"name":"@s","objective":"calc"}},{"text":" ticks to die!"}]

# teams
execute as @a[scores={death=18,team=1},tag=a,tag=!b] run gamemode spectator @a[scores={team=2},tag=!die]
execute as @a[scores={death=18,team=1},tag=a,tag=!b] run tellraw @a[scores={team=2},tag=!die] {"text":"The person you have been trying to protect has died! As your purpose in life is over, you will now be a spectator.","color":"gray"}
execute as @a[scores={death=18,team=2},tag=a,tag=!b] run gamemode spectator @a[scores={team=1},tag=!die]
execute as @a[scores={death=18,team=2},tag=a,tag=!b] run tellraw @a[scores={team=1},tag=!die] {"text":"The person you have been trying to protect has died! As your purpose in life is over, you will now be a spectator.","color":"gray"}


#execute as @a[scores={death=18,team=1},tag=a,tag=!b] run tag @a[scores={team=1}] add b
#execute as @a[scores={death=18,team=2},tag=a,tag=!b] run tag @a[scores={team=2}] add b



#execute as @a[scores={death=18,team=1},tag=a] run tag @a[scores={team=1}] add c
#execute as @a[scores={death=18,team=2},tag=a] run tag @a[scores={team=2}] add c
#execute as @a[scores={death=18,team=3},tag=a] run tag @a[scores={team=3}] add c
#execute as @a[scores={death=18,team=4},tag=a] run tag @a[scores={team=4}] add c
#execute as @a[scores={death=18,team=5},tag=a] run tag @a[scores={team=5}] add c
#execute as @a[scores={death=18,team=6},tag=a] run tag @a[scores={team=6}] add c
#execute as @a[scores={death=18,team=7},tag=a] run tag @a[scores={team=7}] add c
#execute as @a[scores={death=18,team=7},tag=a] run tag @a[scores={team=7}] add c

# execute as @a[tag=a] run scoreboard players operation @s calc = @s score
scoreboard players set @a[tag=a] death 20