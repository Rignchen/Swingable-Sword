## function swing:tick

execute store result score #temp swing.use run data get entity @s SelectedItemSlot
execute unless score @s swing.use = #temp swing.use run function swing:action/swing/slot

execute if score @s swing.carrot matches 1.. run function swing:action/click
execute unless score @s swing.cooldown matches 0 run scoreboard players remove @s swing.cooldown 1