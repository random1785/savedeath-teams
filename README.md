# savedeath-teams
Minecraft Datapack for 1.21.5 (unknown compatiblity with other versions as it requires the usage of NBT data for /give) where two teams attempt to save a person on the other team from trying to die!

## Features:
Timer determines how long players took to die<br/>
Health and damage calculator to determine a winner across the game<br/>
Maximum damage threshold to kill teams once they have reached 50 damage<br/>
Round ends at 2500 ticks in case both players are trapped<br>
Random spawns for each and every round<br/>
A random person from each team is picked to die each round <br>
The person trying to die is given glowing <br>
The people trying to save the person are given a set of items and resistance 5. <br>
Upon the death of the person they are trying to save, players are put in spectator to spectate the other group of players.

## More technical stuff that is mostly for myself:
F**k this stupid piece of code I hate everything <br>
Because spreadplayers actually SPREADS the players, I originally had all players on the same team as the spreadplayers command can spread everyone on the same team to the same place. However, this is impossible NOW, because the players are on two separate teams. Therefore, I have the most shit and scuffed system ever: a player is given a random tag and then spread to a random location. Using a few delayed functions, everyone is then teleported to this person and then this person is spread into a random location again and everyone is teleported to them again. To avoid this person from getting a sight advantage, they are given blindness. <br>
The difficulty is set to hard to encourage mob spawning. Additionally, nighttime happens very quickly. <br>
The person dying recieves a helmet to change creeper's max damage to just half a heart.
Repeated attempts to heal players in case they spawn on lower health<br/>
Detection for players who have escaped the spawn cage starts at 5 seconds left<br/>
If a player joins midway through a match, they are instantly eliminated and put into spectator mode<br/>
If a player leaves midway through a match, they are able to rejoin as long as the health calculation has not started (nobody is alive and playing)

## Bugs and todo:
Publicly shame players for leaving the cage using a title command<br/>
Give the escaper a way to deal damage to trappers sitting in the same block as them<br>
Does a crossbow work better?<br>
Give knockback onto the fishing rod, actually <br>
Fix the helmet to prevent 1-creeper

