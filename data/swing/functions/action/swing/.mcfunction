## function swing:action/click

#cooldown
execute store result score @s swing.cooldown run data get entity @s SelectedItem.tag.swing.cooldown
#damages
execute store result score #dmg swing.use run data get entity @s SelectedItem.tag.swing.damage
#crit?
execute store result score #temp swing.use run data get entity @s Motion[1] 10
execute if score #temp swing.use matches ..-2 run function swing:action/swing/crit
#radius
execute store result score #temp swing.use run data get entity @s SelectedItem.tag.swing.radius
scoreboard players operation #temp1 swing.use = #temp swing.use

#damage
tag @s add swing.hit
execute anchored eyes positioned ^ ^ ^1 run function swing:action/swing/particle/
tag @e[distance=..2] remove swing.hit
tag @s remove swing.hit

#sheiny
playsound entity.player.attack.sweep player @a[distance=..20]
