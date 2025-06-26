execute as @e[tag=score,scores={round=1,score=50..}] run execute unless entity @a[tag=die,scores={death=17,health=1..500}] run tellraw @a {"text":"failsave checker has ended the round! did something weird happen?","color":"gray"}
execute as @e[tag=score,scores={round=1,score=50..}] run execute unless entity @a[tag=die,scores={death=17,health=1..500}] run schedule function a:zzzhealthcalc1 2s


schedule function a:zzzfiveschecker 5s