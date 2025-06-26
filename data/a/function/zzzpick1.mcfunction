# make sure nobody else can die
effect give @a[scores={health=1..500},tag=!die] resistance infinite 255 true
effect give @a[scores={health=1..500},tag=!die] jump_boost infinite 1 true
effect give @a[scores={health=1..500},tag=!die] speed infinite 1 true
effect give @a[scores={health=1..500},tag=!die] dolphins_grace infinite 1 true
effect give @a[scores={health=1..500},tag=!die] night_vision infinite 1 true

# say whos the deather
execute as @a[tag=die,scores={health=1..500,team=1}] run tellraw @a [{"bold":true,"color":"aqua","selector":"@s"},{"bold":false,"text":" is going to be dying for Team 1!"}]
execute as @a[tag=die,scores={health=1..500,team=2}] run tellraw @a [{"bold":true,"color":"green","selector":"@s"},{"bold":false,"text":" is going to be dying for Team 2!"}]


# set calc to smthn
scoreboard players set @a calc -1785

schedule function a:zzzpick2 70t