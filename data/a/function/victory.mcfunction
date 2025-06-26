execute as @a[scores={death=18,team=1},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=1}] calc = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18,team=2},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=2}] calc = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18,team=3},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=3}] calc = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18,team=4},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=4}] calc = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18,team=5},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=5}] calc = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18,team=6},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=6}] calc = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18,team=7},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=7}] calc = @e[limit=1,type=armor_stand,tag=score] score

execute as @a[scores={death=18,team=1},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=1}] score = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18,team=2},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=2}] score = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18,team=3},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=3}] score = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18,team=4},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=4}] score = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18,team=5},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=5}] score = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18,team=6},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=6}] score = @e[limit=1,type=armor_stand,tag=score] score
execute as @a[scores={death=18,team=7},tag=!a,tag=!b] run scoreboard players operation @a[scores={calc=-1785,team=7}] score = @e[limit=1,type=armor_stand,tag=score] score


execute unless score @e[limit=1,type=armor_stand,tag=score] first matches 0.. run execute as @a[scores={death=18},tag=!a] at @s run scoreboard players operation @e[type=minecraft:armor_stand,tag=score] first = @s calc
execute unless score @e[limit=1,type=armor_stand,tag=score] limit matches 0.. run function a:zzzlimit


#execute as @a[scores={death=18,team=1},tag=!a,tag=!b] run kill @a[scores={team=1,death=17}]
#execute as @a[scores={death=18,team=2},tag=!a,tag=!b] run kill @a[scores={team=2,death=17}]
#execute as @a[scores={death=18,team=3},tag=!a,tag=!b] run kill @a[scores={team=3,death=17}]
#execute as @a[scores={death=18,team=4},tag=!a,tag=!b] run kill @a[scores={team=4,death=17}]
#execute as @a[scores={death=18,team=5},tag=!a,tag=!b] run kill @a[scores={team=5,death=17}]
#execute as @a[scores={death=18,team=6},tag=!a,tag=!b] run kill @a[scores={team=6,death=17}]
#execute as @a[scores={death=18,team=7},tag=!a,tag=!b] run kill @a[scores={team=7,death=17}]


schedule function a:victory2 1t