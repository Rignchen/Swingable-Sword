## function swing:action/swing/schedule/

execute as @e[type=!#swing:noai,tag=swing.hit,distance=..2] run function swing:action/swing/damage
item modify entity @s weapon.mainhand swing:recharge
tag @s remove swing.shooter
