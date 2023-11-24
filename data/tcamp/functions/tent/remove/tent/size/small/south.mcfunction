##
 # west.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say remove south


#saving container info to armorstand head item
data modify entity @s data.camp.containers.chests append from block ~ ~ ~1 Items

#clearing copied containers
data remove block ~ ~ ~1 Items

#spawning head item according to colour
#red
execute if data entity @s data.camp{colour:"red"} run loot spawn ~ ~0.5 ~ loot tcamp:heads/tents/small/red

#mark head items
tag @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest] add tcamp.item.modify

#copy camp info from marker head to head item
data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.camp set from entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] data.camp
#Name
data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.display.Name set from entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] data.name
#name colour
data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.display.color set from entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..10] data.color
#add lore to head item (items stored?) [(Colour) (size)] <- needs to be adde to add_lore function
execute as @e[tag=tcamp.item.modify] at @s run function tcamp:cardinal/modify_item/add_lore
#unmark head item
tag @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest] remove tcamp.item.modify


#replace structure with air
setblock ~ ~ ~ structure_block[mode=load]{name:"tcamp:tent_empty/small/tent_small_south",posX:-1,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace
setblock ~ ~1 ~ redstone_block
setblock ~ ~1 ~ air
setblock ~ ~ ~ air

#remove interaction confirmation
execute align xyz positioned ~ ~1 ~ run function tcamp:interactables/remove/confirmation/south

kill @s