schedule clear a:zzzstart
schedule clear a:zzzstart1
schedule clear a:zzzstart2
schedule clear a:zzzhealthcalc1
schedule clear a:zzzhealthcalc2
schedule clear a:zzzhealthcalc3
schedule clear a:zzzhealthcalc2
schedule clear a:zzzfiveschecker
schedule clear a:victory
schedule clear a:victory2
scoreboard players reset @e
scoreboard players set @a health -69420
scoreboard players set @a death 1785
tellraw @a {"text":"hard reset has been ran.","color":"dark_red"}
tp @a 0 302 0
scoreboard players set @e[type=armor_stand,tag=score] round 0
tag @e[type=armor_stand,tag=score] remove newcheck
tag @a remove t1
tag @a remove t2
tag @a remove t3
tag @a remove t4
tag @a remove t5
tag @a remove t6
tag @a remove t7
tag @a remove die