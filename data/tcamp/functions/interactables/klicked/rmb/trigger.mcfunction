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
#error, if plyer doesnt have axe in hand
execute as @s[tag=tcamp.interaction.tent.options.confirm] unless entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe] as @p[limit=1,sort=nearest,distance=..1] at @s run function tcamp:cardinal/effects/sound/equip_axe
#small
#west
execute as @s[tag=tcamp.interaction.tent.options.confirm,tag=tcamp.interaction.west] if entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe] at @s align xyz positioned ~0.5 ~-1 ~-0.5 as @e[tag=tcamp.marker.campinfo.small,limit=1,sort=nearest,distance=..1] at @s align xyz positioned ~ ~ ~ run function tcamp:tent/remove/tent/size/small/west
#east
execute as @s[tag=tcamp.interaction.tent.options.confirm,tag=tcamp.interaction.east] if entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe] at @s align xyz positioned ~0.5 ~-1 ~1.5 as @e[tag=tcamp.marker.campinfo.small,limit=1,sort=nearest,distance=..1] at @s align xyz positioned ~ ~ ~ run function tcamp:tent/remove/tent/size/small/east
#north
execute as @s[tag=tcamp.interaction.tent.options.confirm,tag=tcamp.interaction.north] if entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe] at @s align xyz positioned ~1.5 ~-1 ~0.5 as @e[tag=tcamp.marker.campinfo.small,limit=1,sort=nearest,distance=..1] at @s align xyz positioned ~ ~ ~ run function tcamp:tent/remove/tent/size/small/north
#south
execute as @s[tag=tcamp.interaction.tent.options.confirm,tag=tcamp.interaction.south] if entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe] at @s align xyz positioned ~-0.5 ~-1 ~0.5 as @e[tag=tcamp.marker.campinfo.small,limit=1,sort=nearest,distance=..1] at @s align xyz positioned ~ ~ ~ run function tcamp:tent/remove/tent/size/small/south
#medium
#west
execute as @s[tag=tcamp.interaction.tent.options.confirm,tag=tcamp.interaction.west] if entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe] at @s align xyz positioned ~0.5 ~-1 ~-1.5 as @e[tag=tcamp.marker.campinfo.medium,limit=1,sort=nearest,distance=..1] at @s align xyz positioned ~ ~ ~ run function tcamp:tent/remove/tent/size/medium/west
#east
execute as @s[tag=tcamp.interaction.tent.options.confirm,tag=tcamp.interaction.east] if entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe] at @s align xyz positioned ~0.5 ~-1 ~2.5 as @e[tag=tcamp.marker.campinfo.medium,limit=1,sort=nearest,distance=..1] at @s align xyz positioned ~ ~ ~ run function tcamp:tent/remove/tent/size/medium/east
#north
execute as @s[tag=tcamp.interaction.tent.options.confirm,tag=tcamp.interaction.north] if entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe] at @s align xyz positioned ~2.5 ~-1 ~0.5 as @e[tag=tcamp.marker.campinfo.medium,limit=1,sort=nearest,distance=..1] at @s align xyz positioned ~ ~ ~ run function tcamp:tent/remove/tent/size/medium/north
#south
execute as @s[tag=tcamp.interaction.tent.options.confirm,tag=tcamp.interaction.south] if entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_axe] at @s align xyz positioned ~-1.5 ~-1 ~0.5 as @e[tag=tcamp.marker.campinfo.medium,limit=1,sort=nearest,distance=..1] at @s align xyz positioned ~ ~ ~ run function tcamp:tent/remove/tent/size/medium/south




#spawning tent
execute as @s[tag=tcamp.interaction.tent.setup] at @p[limit=1,sort=nearest,distance=..1] run function tcamp:tent/spawn/tent/main


#klicked on remove
#west
#spawn confirmation
execute as @s[tag=tcamp.interaction.tent.options.dismantle,tag=tcamp.interaction.west] at @s align xyz positioned ~ ~ ~-1 run function tcamp:interactables/spawn/confirmation/west
#remove self
execute as @s[tag=tcamp.interaction.tent.options.dismantle,tag=tcamp.interaction.west] at @s align xyz positioned ~ ~ ~-1 run function tcamp:interactables/remove/options/west
#east
#spawn confirmation
execute as @s[tag=tcamp.interaction.tent.options.dismantle,tag=tcamp.interaction.east] at @s align xyz positioned ~ ~ ~1 run function tcamp:interactables/spawn/confirmation/east
#remove self
execute as @s[tag=tcamp.interaction.tent.options.dismantle,tag=tcamp.interaction.east] at @s align xyz positioned ~ ~ ~1 run function tcamp:interactables/remove/options/east
#north
#spawn confirmation
execute as @s[tag=tcamp.interaction.tent.options.dismantle,tag=tcamp.interaction.north] at @s align xyz positioned ~1 ~ ~ run function tcamp:interactables/spawn/confirmation/north
#remove self
execute as @s[tag=tcamp.interaction.tent.options.dismantle,tag=tcamp.interaction.north] at @s align xyz positioned ~1 ~ ~ run function tcamp:interactables/remove/options/north
#south
#spawn confirmation
execute as @s[tag=tcamp.interaction.tent.options.dismantle,tag=tcamp.interaction.south] at @s align xyz positioned ~-1 ~ ~ run function tcamp:interactables/spawn/confirmation/south
#remove self
execute as @s[tag=tcamp.interaction.tent.options.dismantle,tag=tcamp.interaction.south] at @s align xyz positioned ~-1 ~ ~ run function tcamp:interactables/remove/options/south

#modify tent colour data
execute as @s[tag=tcamp.interaction.tent.options.dye] if entity @p[limit=1,sort=nearest,distance=..1,predicate=tcamp:player/holding_dye] run function tcamp:tent/modify/data/colour/get_player_colour
#if not holdung dye
execute as @s[tag=tcamp.interaction.tent.options.dye] if entity @p[limit=1,sort=nearest,distance=..1,predicate=!tcamp:player/holding_dye] run say need holding dye


