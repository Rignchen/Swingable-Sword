## function swing:action/swing/particle/
## function swing:action/swing/particle/right
## function swing:action/swing/particle/left

particle minecraft:dust 18000000 18000000 18000000 0.2
execute as @e[type=!#swing:noai,tag=!global.ignore,tag=!global.ignore.kill,tag=!swing.hit,dx=1,dy=1,dz=1] run function swing:action/swing/particle/hit
