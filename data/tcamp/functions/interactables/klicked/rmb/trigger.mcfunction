##
 # trigger.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#at player, as interaction

#remove interaction data from interaction
data remove entity @s interaction

#trigger correspoding functions depending on tag of the interacition
#confirm removal of camp
#small
#west
execute as @s[tag=tcamp.interaction.tent.options.confirm,tag=tcamp.interaction.west] if entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe] at @s align xyz positioned ~0.5 ~-1 ~-0.5 as @e[tag=tcamp.marker.campinfo.small,limit=1,sort=nearest,distance=..1] at @s align xyz positioned ~ ~ ~ run function tcamp:tent/remove/tent/size/small/west
#error, if plyer doesnt have axe in hand
execute as @s[tag=tcamp.interaction.tent.options.confirm] unless entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe] run say holding axe required

#spawning tent
execute as @s[tag=tcamp.interaction.tent.setup] at @p[limit=1,sort=nearest,distance=..1] run function tcamp:tent/spawn/tent/main


#klicked on remove
#west
#spawn confirmation
execute as @s[tag=tcamp.interaction.tent.options.dismantle,tag=tcamp.interaction.west] at @s align xyz positioned ~ ~ ~-1 run function tcamp:interactables/spawn/confirmation/west
#remove self
execute as @s[tag=tcamp.interaction.tent.options.dismantle,tag=tcamp.interaction.west] at @s align xyz positioned ~ ~ ~-1 run function tcamp:interactables/remove/options/west