##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute as @s[tag=pbroll_camp.interaction.bedroll.west] at @s run function pbroll_camp:remove/roll/west
execute as @s[tag=pbroll_camp.interaction.bedroll.east] at @s run function pbroll_camp:remove/roll/east
execute as @s[tag=pbroll_camp.interaction.bedroll.north] at @s run function pbroll_camp:remove/roll/north
execute as @s[tag=pbroll_camp.interaction.bedroll.south] at @s run function pbroll_camp:remove/roll/south
