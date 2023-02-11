## function swing:player

scoreboard players operation @s swing.use = #temp swing.use
execute store result score @s swing.cooldown run data get entity @s SelectedItem.tag.swing.cooldown
