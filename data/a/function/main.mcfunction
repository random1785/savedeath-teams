function a:murder
scoreboard players reset *
gamerule doImmediateRespawn true
gamerule keepInventory true
difficulty hard
time set 0
team add a
team modify a color light_purple
team add b
team modify b color blue
team modify a collisionRule pushOwnTeam
team modify b collisionRule pushOwnTeam
team modify a friendlyFire false
team modify b friendlyFire false
scoreboard objectives add score dummy
scoreboard objectives add death deathCount
scoreboard objectives add calc dummy
scoreboard objectives add health dummy
scoreboard objectives add round dummy
scoreboard objectives add multi dummy
scoreboard objectives add left dummy
scoreboard objectives add right dummy
scoreboard objectives add gone dummy
scoreboard objectives add two dummy
scoreboard objectives add five dummy
scoreboard objectives add fivehundred dummy
scoreboard objectives add first dummy
scoreboard objectives add overkill dummy
scoreboard objectives add limit dummy
scoreboard objectives add temp dummy
scoreboard objectives add pcount dummy
scoreboard objectives add tpcount dummy
scoreboard objectives add team dummy
scoreboard objectives add t1 trigger
scoreboard objectives add t2 trigger
scoreboard players enable @a t2
scoreboard players enable @a t1
scoreboard objectives add glass minecraft.mined:minecraft.glass

scoreboard objectives setdisplay list team
scoreboard objectives setdisplay sidebar health
scoreboard players set @a death 1785
scoreboard players set @a team 0
tellraw @a [{"bold":true,"color":"red","underline":true,"text":"DEATHSAVE TEAMS "},{"text":"death speedruns has been loaded! Use /function a:start to begin the games!","color":"green"}]



# create spawn platform
schedule function a:zzzspawn 5t
execute in the_nether run forceload add -13 -14 25 24
place template a:lobbyoverworld -12 295 -14

setworldspawn 0 302 0
spawnpoint @a 0 302 0
tp @a 0 302 0
gamemode survival @a
gamerule spawnRadius 2

execute unless entity @e[type=minecraft:armor_stand,limit=1,tag=score] run summon minecraft:armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0