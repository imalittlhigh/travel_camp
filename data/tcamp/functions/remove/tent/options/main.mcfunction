##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#as interaction

#spawns confirmation
#west
execute as @s[tag=tcamp.interaction.west,tag=tcamp.interaction.tent.options.dismantle] align xyz positioned ~ ~ ~-1 run function tcamp:place/interactables/confirmation/west
#removes old options (also self)
#west
execute as @s[tag=tcamp.interaction.west,tag=tcamp.interaction.tent.options.dismantle] align xyz positioned ~ ~-1 ~-1 run function tcamp:remove/tent/options/remove/west
