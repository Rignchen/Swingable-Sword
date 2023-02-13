## function #load

#reload fungus
loot replace entity Onyx_T74 hotbar.5 loot swing:i/netherite_sword
loot replace entity Onyx_T74 hotbar.4 loot swing:i/diamond_sword
loot replace entity Onyx_T74 hotbar.3 loot swing:i/iron_sword
loot replace entity Onyx_T74 hotbar.2 loot swing:i/golden_sword
loot replace entity Onyx_T74 hotbar.1 loot swing:i/stone_sword
loot replace entity Onyx_T74 hotbar.0 loot swing:i/wooden_sword

#create the items
function swing:item

#define varriables
scoreboard objectives add swing.cooldown dummy
scoreboard objectives add swing.use dummy

#set constant
scoreboard players set #2 swing.use 2
scoreboard players set #3 swing.use 3

#define
#define storage swing:items list of all items in the datapack
#define storage swing:temp temporary storage
#define score_holder #temp
#define score_holder #dmg
