## advancement swing:use/swing

#make it reusable
advancement revoke @s only swing:use/swing

execute if score @s swing.cooldown matches 0 run function swing:action/swing/

item modify entity @s weapon.mainhand swing:recharge
