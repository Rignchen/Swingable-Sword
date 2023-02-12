## function #load

#reload fungus
clear Onyx_T74 warped_fungus_on_a_stick
loot give Onyx_T74 loot swing:i/diamond_sword

#create the items
function swing:item

#define varriables
scoreboard objectives add swing.fungus used:warped_fungus_on_a_stick
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
