execute as @a[scores={use=1..}] run clear @s warped_fungus_on_a_stick 1
execute as @a[scores={use=1..}] at @s if entity @e[tag=score,type=armor_stand,scores={score=0..}] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace cobweb
execute as @a[scores={use=1..}] at @s if entity @e[tag=score,type=armor_stand,scores={score=0..}] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace sponge
execute as @a[scores={use=1..}] at @s if entity @e[tag=score,type=armor_stand,scores={score=0..}] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace wet_sponge
execute as @a[scores={use=1..}] at @s if entity @e[tag=score,type=armor_stand,scores={score=0..}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute as @a[scores={use=1..}] at @s if entity @e[tag=score,type=armor_stand,scores={score=0..}] run tellraw @a[distance=..10] [{"selector":"@s","color":"dark_green","bold":true},{"bold":false,"text":" used their powerup!"}]
execute as @a[scores={use=1..}] at @s run playsound minecraft:block.creaking_heart.break master @s ~ ~ ~ 100
execute as @a[scores={use=1..}] at @s unless entity @e[tag=score,type=armor_stand,scores={score=0..}] run tellraw @a[distance=..10] [{"selector":"@s","color":"dark_red","bold":true},{"bold":false,"text":" wasted their powerup, LMFAO!"}]


execute as @a[scores={use=1..}] run scoreboard players reset @s use
