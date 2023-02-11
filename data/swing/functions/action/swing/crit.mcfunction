## function swing:action/swing/

scoreboard players operation #dmg swing.use *= #3 swing.use
scoreboard players operation #dmg swing.use /= #2 swing.use
playsound entity.player.attack.crit player @a[distance=..20]
