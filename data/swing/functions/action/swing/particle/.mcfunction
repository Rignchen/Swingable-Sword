## function swing:action/swing/

execute unless score #temp swing.use matches 0 positioned as @s anchored eyes rotated ~1 ~ positioned ^ ^ ^1 run function swing:action/swing/particle/right
function swing:action/swing/particle/swing
execute unless score #temp1 swing.use matches 0 positioned as @s anchored eyes rotated ~-1 ~ positioned ^ ^ ^1 run function swing:action/swing/particle/left
