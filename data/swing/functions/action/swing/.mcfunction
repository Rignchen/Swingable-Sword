## function swing:action/click

#get the values
execute store result score @s swing.cooldown run data get entity @s SelectedItem.tag.swing.cooldown
execute store result score #dmg swing.use run data get entity @s SelectedItem.tag.swing.damage

#crit?
execute store result score #temp swing.use run data get entity @s Motion[1] 10
execute if score #temp swing.use matches ..-1 run function swing:action/swing/crit 

#sheiny
playsound entity.player.attack.sweep player @a[distance=..20]
