## function swing:action/swing/particle/right

scoreboard players remove #temp1 swing.use 1
particle minecraft:dust 18000000 18000000 18000000 0.2
execute unless score #temp1 swing.use matches 0 positioned as @s anchored eyes rotated ~-1 ~ positioned ^ ^ ^1 run function swing:action/swing/particle/left