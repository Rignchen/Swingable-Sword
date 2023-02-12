## function swing:player

scoreboard players reset @s swing.fungus
execute if score @s swing.cooldown matches 0 if data entity @s SelectedItem.tag.swing run function swing:action/swing/
