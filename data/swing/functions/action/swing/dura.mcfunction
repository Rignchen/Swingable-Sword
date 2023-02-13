## function swing:action/swing/

execute store result score #temp swing.use run data get storage swing:temp temp.tag.Damage
scoreboard players add #temp swing.use 1
execute store result storage swing:temp temp.tag.Damage int 1 run scoreboard players get #temp swing.use
