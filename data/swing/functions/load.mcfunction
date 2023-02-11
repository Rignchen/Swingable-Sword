## function #load

#items
data modify storage swing:items all.a_sword set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text": "a_sword","italic": false}',Lore:['{"text":"Swingable Swords","color": "blue","italic": true}']},swing:{damage:5,cooldown:14,radius:90},AttributeModifiers:[{Amount:1,Name:"damage",AttributeName:"generic.attack_damage",Slot:"mainhand",UUID:[I;-1743930590,748372703,-2043656609,900175784]},{Amount:1,Name:"knockback",AttributeName:"generic.attack_knockback",Slot:"mainhand",UUID:[I;-1743930590,748372703,-2043656609,900175784]},{Amount:1,Name:"speed",AttributeName:"minecraft:generic.attack_speed",Slot:"mainhand",UUID:[I;-1743930590,748372703,-2043656609,900175784]}],ctc:{from:"rignchen:swing",id:"a_sword", traits:{"weapon/sword":1b}}}}

#reload carrots
clear Onyx_T74 carrot_on_a_stick
give Onyx_T74 carrot_on_a_stick{}
loot give Onyx_T74 loot swing:i/a_sword

#define varriables
scoreboard objectives add swing.carrot used:carrot_on_a_stick
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
