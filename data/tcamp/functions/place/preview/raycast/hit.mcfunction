##
 # hit.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#ends the loop function (you could also do that with the break command in 1.20+ (in the loop) but this works)
scoreboard players set %tcamp.i tcamp.dummy 100


#summoning armorstand marker with item, to hold contents of the camp inventory
summon armor_stand ~ ~-0.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["tcamp","tcamp.marker","tcamp.marker.hold_campinfo","tcamp.marker.hold_campinfo.set_info"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,1,1,1],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDUyZTQzNTU3OWM1MDY4YTFhMTkwMzQyOGFlMThjMGQ2ZDU3NTE2MTA2ZDMxOTFhNmY3MGE5OGMzNmNiYzdhNiJ9fX0="}]}}}}]}
#copying the camp info from item to armorstand head
execute at @s run data modify entity @e[tag=tcamp.marker.hold_campinfo.set_info,limit=1,sort=nearest] ArmorItems[3].tag.camp set from entity @e[tag=tcamp.item.copy_campinfo,limit=1,sort=nearest] Item.tag.camp
#removing set_info tag from armorstand
execute positioned ~ ~-0.5 ~ run tag @e[tag=tcamp.marker.hold_campinfo.set_info,limit=1,sort=nearest] remove tcamp.marker.hold_campinfo.set_info
#removing the temp item
execute at @s run kill @e[tag=tcamp.item.copy_campinfo,limit=1,sort=nearest]

##camp tents
#test what type of camp item it is id[0] = type, id[1] = size, id[2] = colour
execute if block ~ ~ ~ #tcamp:heads{SkullOwner:{Id:[I;1,1,1,1],Name:"%tcamp.camp"}} run function tcamp:place/preview/tent/small

