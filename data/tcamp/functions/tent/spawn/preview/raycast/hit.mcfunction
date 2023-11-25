##
 # hit.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#ends the loop function (you could also do that with the break command in 1.20+ (in the loop) but this works)
scoreboard players set %tcamp.i tcamp.dummy 100


#summoning marker to hold camp info
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["tcamp","tcamp.marker","tcamp.marker.hold_campinfo","tcamp.marker.hold_campinfo.set_info"]}

#copying the camp info from item to marker
data modify entity @e[tag=tcamp.marker.hold_campinfo.set_info,limit=1,sort=nearest,distance=..1] data.camp set from entity @e[tag=tcamp.item.copy_campinfo,limit=1,sort=nearest] Item.tag.camp
#copying name of item to marker
data modify entity @e[tag=tcamp.marker.hold_campinfo.set_info,limit=1,sort=nearest,distance=..1] data.name set from entity @e[tag=tcamp.item.copy_campinfo,limit=1,sort=nearest] Item.tag.name
data modify entity @e[tag=tcamp.marker.hold_campinfo.set_info,limit=1,sort=nearest,distance=..1] data.colour set from entity @e[tag=tcamp.item.copy_campinfo,limit=1,sort=nearest] Item.tag.color

#removing set_info tag from armorstand
tag @e[tag=tcamp.marker.hold_campinfo.set_info,limit=1,sort=nearest,distance=..1] remove tcamp.marker.hold_campinfo.set_info
#removing the temp item
execute at @s run kill @e[tag=tcamp.item.copy_campinfo,limit=1,sort=nearest]

##camp tents
#test what type of camp item it is id[1] = type, id[2] = size, id[3] = colour
execute if data entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..1] data.camp{size:"small"} run function tcamp:tent/spawn/preview/size/small

