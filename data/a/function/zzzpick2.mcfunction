
# give them their items
clear @a
give @a[scores={health=1..500},tag=!die] netherite_sword[enchantments={sharpness:5}]
give @a[scores={health=1..500},tag=!die] bow
give @a[scores={health=1..500},tag=!die] fishing_rod
give @a[scores={health=1..500},tag=!die] cobweb 8
give @a[scores={health=1..500},tag=!die] sponge 64
give @a[scores={health=1..500},tag=!die] sponge 64
give @a[scores={health=1..500},tag=!die] ender_pearl 32
give @a[scores={health=1..500},tag=!die] lingering_potion[minecraft:potion_contents={potion:"strong_healing"}] 1
give @a[scores={health=1..500},tag=!die] splash_potion[minecraft:potion_contents={potion:"strong_healing"}] 1
give @a[scores={health=1..500},tag=!die] stick[minecraft:enchantments={knockback:3}]
give @a[scores={health=1..500},tag=!die] water_bucket 16
give @a[scores={health=1..500},tag=!die] tipped_arrow[minecraft:potion_contents={potion:"strong_healing"}] 8

execute as @a[tag=die,scores={health=1..500,team=2}] run item replace entity @s armor.head with turtle_helmet[minecraft:enchantments={blast_protection:8,binding_curse:1},minecraft:unbreakable={true:1}]
execute as @a[tag=die,scores={health=1..500,team=1}] run item replace entity @s armor.head with turtle_helmet[minecraft:enchantments={blast_protection:8,binding_curse:1},minecraft:unbreakable={true:1}]
