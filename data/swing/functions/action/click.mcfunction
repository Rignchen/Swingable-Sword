## advancement swing:use/swing

#make it reusable
advancement revoke @s only swing:use/swing

execute if score @s swing.cooldown matches 0 run function swing:action/swing/
execute unless entity @s[tag=swing.shooter] run item modify entity @s weapon.mainhand swing:recharge
execute if entity @s[tag=swing.shooter] run schedule function swing:action/swing/schedule/ 1t
