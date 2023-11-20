##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute as @s[tag=camp.pbroll.interaction.bedroll.west] at @s run function pbroll:remove/roll/west
execute as @s[tag=camp.pbroll.interaction.bedroll.east] at @s run function pbroll:remove/roll/east
execute as @s[tag=camp.pbroll.interaction.bedroll.north] at @s run function pbroll:remove/roll/north
execute as @s[tag=camp.pbroll.interaction.bedroll.south] at @s run function pbroll:remove/roll/south
