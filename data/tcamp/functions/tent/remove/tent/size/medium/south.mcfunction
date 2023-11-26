##
 # west.mcfunction
 # 
 #
 # Created by imalittlhigh.
##


#check if blocks still intact
tag @s remove tcamp.marker.campinfo.intact
execute if predicate tcamp:intact/tents/medium/east run tag @s add tcamp.marker.campinfo.intact

#error if not intact
execute as @s[tag=!tcamp.marker.campinfo.intact] run say not intact
#setting up data structure
execute as @s[tag=tcamp.marker.campinfo.intact] run data modify entity @s data.camp.containers.chests set value [[],[]]
execute as @s[tag=tcamp.marker.campinfo.intact] run data modify entity @s data.camp.containers.furnace set value [[]]
#saving container info to armorstand head item
execute as @s[tag=tcamp.marker.campinfo.intact] run data modify entity @s data.camp.containers.chests[0] set from block ~-1 ~1 ~ Items
execute as @s[tag=tcamp.marker.campinfo.intact] run data modify entity @s data.camp.containers.chests[1] set from block ~-1 ~ ~-1 Items
execute as @s[tag=tcamp.marker.campinfo.intact] run data modify entity @s data.camp.containers.furnace[0] set from block ~-1 ~ ~1 Items

#clearing copied containers
execute as @s[tag=tcamp.marker.campinfo.intact] run data remove block ~-1 ~1 ~ Items
execute as @s[tag=tcamp.marker.campinfo.intact] run data remove block ~-1 ~ ~-1 Items
execute as @s[tag=tcamp.marker.campinfo.intact] run data remove block ~-1 ~ ~1 Items

#effects
execute as @s[tag=tcamp.marker.campinfo.intact] run function tcamp:cardinal/effects/tent/effects/remove_tent
#spawning head item
execute as @s[tag=tcamp.marker.campinfo.intact] run loot spawn ~ ~0.5 ~ loot tcamp:heads/tents/medium/blank

#mark head items
execute as @s[tag=tcamp.marker.campinfo.intact] run tag @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest] add tcamp.item.modify

#copy camp info from marker head to head item
execute as @s[tag=tcamp.marker.campinfo.intact] run data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.camp set from entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] data.camp
#Name
execute as @s[tag=tcamp.marker.campinfo.intact] run data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.display.Name set from entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] data.name
#name colour
execute as @s[tag=tcamp.marker.campinfo.intact] run data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.display.color set from entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] data.color
#add lore to head item (items stored?) [(Colour) (size)] <- needs to be adde to add_lore function
execute as @s[tag=tcamp.marker.campinfo.intact] as @e[tag=tcamp.item.modify] at @s run function tcamp:cardinal/modify_item/add_lore
#unmark head item
execute as @s[tag=tcamp.marker.campinfo.intact] run tag @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest] remove tcamp.item.modify


#replace structure with air
execute as @s[tag=tcamp.marker.campinfo.intact] run setblock ~ ~ ~ structure_block[mode=load]{name:"tcamp:tent_empty/medium/tent_medium_south",posX:-3,posY:0,posZ:-3,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace
execute as @s[tag=tcamp.marker.campinfo.intact] run setblock ~ ~1 ~ redstone_block
execute as @s[tag=tcamp.marker.campinfo.intact] run setblock ~ ~1 ~ air
execute as @s[tag=tcamp.marker.campinfo.intact] run setblock ~ ~ ~ air


#remove entities
execute as @s[tag=tcamp.marker.campinfo.intact] run function tcamp:tent/remove/entities/size/medium/south