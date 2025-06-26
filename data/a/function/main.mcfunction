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
scoreboard objectives add use minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives setdisplay list team
scoreboard objectives setdisplay sidebar health
scoreboard players set @a death 1785
scoreboard players set @a team 0
tellraw @a [{"bold":true,"color":"red","underline":true,"text":"DEATHSAVE TEAMS "},{"text":"death speedruns has been loaded! Use /function a:start to begin the games!","color":"green"}]



# create spawn platform
schedule function a:zzzspawn 5t
execute in the_nether run forceload add -13 -14 25 24
place template a:lobbyoverworld1 -12 295 -14

setworldspawn 0 302 0
spawnpoint @a 0 302 0
tp @a 0 302 0
gamemode survival @a
gamerule spawnRadius 2


# TEXT DISPLAYS
kill @e[type=text_display]
summon text_display -9.00 302 0.50 {Glowing:1b,line_width:600,Rotation:[-90F,0F],text:[{"bold":true,"text":"Savedeath Teams Instructions:","underlined":true},{"bold":true,"text":"\nDescription:","underlined":false},{"bold":false,"text":" There are only two teams playing. Each round, everyone will be put in the same box in a random place in the Minecraft world. One person from each team will be chosen to die. This person will recieve a curse of binding turtle shell with blast protection and get permanent glowing. The teams are colour coded and therefore the glowing will be a certain colour. Additionally, the person dying recieves some Warped Fungi on a Stick that can nuke all blocks in a 3x3x3 area around them to prevent them from being trapped.\n\n Everyone else will be trying to save the person on the opposite team trying to die. Everyone trying to save the other player will recieve speed and jump boost 2, night vision, dolphins grace, permanent resistance 5 (you cannot die), along with a plethora of items to aid with saving the player.","underlined":false},{"bold":true,"text":"\n\nScoring: ","underlined":false},{"bold":false,"text":"The team's score is the time taken in ticks for their designated team member to die, which will be printed in chat.\n","underlined":false},{"bold":true,"text":"\nHealth and damage: ","underlined":false},{"bold":false,"italic":false,"strikethrough":false,"text":"Each team starts off with 200 health, and max damage is 50 damage.\nEvery 10 ticks is equal to 1 damage e.g. if Team 2 takes 500 ticks to die and Team 1 takes 731 ticks to die, Team 1 will take 731-500 = 231 or 23 damage.\nThe round also ends when the tick timer reaches 2500 (2 minutes and 5 seconds) to avoid infinite stalemates. If your teammate fails to die by this limit, your team will take max damage.\n","underlined":false},{"bold":false,"text":"If your team's health reaches 0, your team loses the game.","underlined":false}]}
summon text_display 0.50 302 9.50 {Glowing:1b,line_width:600,Rotation:[180F,0F],text:[{"bold":true,"text":"Allowed client modifications:","underlined":true},{"bold":false,"text":"\n No hacked clients are allowed.\n","underlined":false},{"bold":false,"text":"Any mod that gathers information about the seed, such as minimap mods, mapping mods, entity trackers, etc. are not allowed. ","underlined":false},{"bold":false,"text":"\nHowever, you are allowed to use gamma utils or fullbright to increase your vision during nighttime/in caves provided that you do not toggle between multiple gamma values.","underlined":false},{"text":"\n\nAdditional Information:\n"},{"bold":false,"underlined":false,"text":"The difficulty is set to HARD to make mobs more deadly, but creepers are nerfed with the helmet.\nThe game starts about 3 minutes before nighttime to make it easier for the people trying to die.\nIf the person you are trying to save dies, you are put in spectator mode.\nBe aware of the healing arrows, as they first apply arrow damage and then the healing effect. As a result, do not charge the bow back all the way if you wish to use the healing arrows."}]}
summon text_display 0.50 302 -9.50 {Glowing:1b,line_width:600,text:[{"bold":true,"text":"Rules:","underlined":true},{"text":"\n1. ","underlined":false},{"bold":false,"text":"Savers may NOT help their teammate die (either by dropping them pearls or fighting the other team's savers). Teams found breaking this rule will lose 50 health as a warning, then 60 health for repeated infractions.\n","underlined":false},{"text":"2.","underlined":false},{"bold":false,"text":" Due to the way Minecraft works, savers are able to pearl out of the starting box. Please do NOT do this as it forcibly ends the round.","underlined":false},{"text":"\n\nItem List:\n"},{"bold":false,"text":"Sharpness V Netherite Sword\nBow\nKnockback III Fishing Rod\n8 Cobwebs\n128 Sponges\n32 Ender Pearls\n16 Water Buckets\nLingering Potion of Healing II\nSplash Potion of Healing II\n8 Tipped Arrows of Healing II","underlined":false}]}


execute unless entity @e[type=minecraft:armor_stand,limit=1,tag=score] run summon minecraft:armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0

function a:zzzfiveschecker



# spectator stuff
scoreboard objectives add spec trigger