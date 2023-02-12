## function swing:action/swing/particle/right

scoreboard players remove #temp1 swing.use 1
function swing:action/swing/particle/swing
execute unless score #temp1 swing.use matches 0 positioned as @s anchored eyes rotated ~-1 ~ positioned ^ ^ ^1 run function swing:action/swing/particle/left
