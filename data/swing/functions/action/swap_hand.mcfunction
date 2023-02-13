## function swing:action/offhand

data modify storage swing:temp temp set from entity @s Inventory[{Slot:-106b}]
item replace entity @s weapon.offhand from entity @s weapon.mainhand
execute if score @s swing.cooldown matches 0 run function swing:action/swing/
summon item_frame ~ ~ ~ {UUID:[I;-1568972605,-1540800505,-1754851654,862451931]}
data modify entity a27b60c3-a429-4007-9767-16ba3367f8db Item set from storage swing:temp temp
item replace entity @s weapon.mainhand from entity a27b60c3-a429-4007-9767-16ba3367f8db container.0
item modify entity @s weapon.mainhand swing:break
kill a27b60c3-a429-4007-9767-16ba3367f8db
