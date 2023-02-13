## function swing:action/swing/

data modify storage swing:temp temp set from entity @s SelectedItem
execute store result score #temp swing.use run data get storage swing:temp temp.tag.Damage
scoreboard players add #temp swing.use 1
execute store result storage swing:temp temp.tag.Damage int 1 run scoreboard players get #temp swing.use
summon item_frame ~ ~ ~ {UUID:[I;-1568972605,-1540800505,-1754851654,862451931]}
data modify entity a27b60c3-a429-4007-9767-16ba3367f8db Item set from storage swing:temp temp
item replace entity @s weapon.mainhand from entity a27b60c3-a429-4007-9767-16ba3367f8db container.0
item modify entity @s weapon.mainhand swing:dura
kill a27b60c3-a429-4007-9767-16ba3367f8db
