## function swing:action/swing/particle/right

scoreboard players remove #temp swing.use 1
execute unless score #temp swing.use matches 0 positioned as @s anchored eyes rotated ~1 ~ positioned ^ ^ ^1 run function swing:action/swing/particle/right
function swing:action/swing/particle/swing
