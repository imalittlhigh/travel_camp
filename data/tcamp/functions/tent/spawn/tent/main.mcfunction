##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#as interaction, at player

#checking if axe is equiped, if calling durability check
tag @p add tcamp.interaction.marked
execute if entity @p[limit=1,sort=nearest,distance=..0.1,predicate=tcamp:player/holding_axe] at @s positioned ~ ~-1 ~ as @p[limit=1,sort=nearest,tag=tcamp.interaction.marked] run function tcamp:cardinal/damage_tool/durability
tag @a remove tcamp.interaction.marked

#if player doesnt have enough dura, error
execute as @p[limit=1,sort=nearest,distance=..0.1,predicate=tcamp:player/holding_axe,tag=!tcamp.player.has_sufficient_durability] at @s run function tcamp:cardinal/effects/sound/durability_error

#if player has enough durability on axe, run collision checks
##sizes
#small
execute if entity @p[limit=1,sort=nearest,distance=..0.1,tag=tcamp.player.has_sufficient_durability,predicate=tcamp:player/holding_axe] at @s as @e[tag=tcamp.marker.hold_campinfo,distance=..1,limit=1,sort=nearest,nbt={data:{camp:{size:"small"}}}] at @s run function tcamp:tent/check/collision_small
#medium
execute if entity @p[limit=1,sort=nearest,distance=..0.1,tag=tcamp.player.has_sufficient_durability,predicate=tcamp:player/holding_axe] at @s as @e[tag=tcamp.marker.hold_campinfo,distance=..1,limit=1,sort=nearest,nbt={data:{camp:{size:"medium"}}}] at @s run function tcamp:tent/check/collision_medium



#if player doenst have axe equiped, error
execute as @p[limit=1,sort=nearest,distance=..0.1,predicate=!tcamp:player/holding_axe] at @s run function tcamp:cardinal/effects/sound/equip_axe
execute as @p[limit=1,sort=nearest,distance=..0.1,predicate=!tcamp:player/holding_axe] run tag @s remove tcamp.player.has_sufficient_durability