##
 # get_player_colour.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say get player colour
#at player, as interaction
#summon armorstand to get dye interacted with
summon armor_stand ~ -100 ~ {NoGravity:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["tcamp","tcamp.marker","tcamp.marker.colour","tcamp.marker.colour.getter"],HandItems:[{id:"minecraft:paper",Count:1b},{}]}
#copying hand dye from player to armorstand
execute as @p positioned ~ -100 ~ run item replace entity @e[tag=tcamp.marker.colour.getter,limit=1,sort=nearest,distance=..1] weapon.mainhand from entity @s weapon.mainhand
#saving item count to player score
execute as @p positioned ~ -100 ~ store result score @s tcamp.dummy run data get entity @e[tag=tcamp.marker.colour.getter,limit=1,sort=nearest,distance=..1] HandItems[0].Count
#saving item id to storage for ez access
execute as @p positioned ~ -100 ~ run data modify storage tcamp:item dye.id set from entity @e[tag=tcamp.marker.colour.getter,limit=1,sort=nearest,distance=..1] HandItems[0].id
#removing temp armorstand
execute as @p positioned ~ -100 ~ run kill @e[tag=tcamp.marker.colour.getter,limit=1,sort=nearest,distance=..1]
#if player holds 32+ items, give tag for okay
execute as @p if score @s tcamp.dummy matches 32.. run tag @s add tcamp.player.colour_count.valid
#removing items from palyer mainhand
execute as @p run item modify entity @s weapon.mainhand tcamp:remove_count

#copying to marker
execute if entity @p[tag=tcamp.player.colour_count.valid,limit=1,sort=nearest,distance=..2] run function tcamp:tent/modify/data/colour/copy_to_marker


#resetting tcamp score for player
execute as @p run scoreboard players reset @s tcamp.dummy
#remving item count tag
tag @p remove tcamp.player.colour_count.valid