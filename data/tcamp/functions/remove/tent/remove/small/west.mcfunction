##
 # west.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say remove west

#saving container info to armorstand head item
data modify entity @s ArmorItems[3].tag.camp.containers.chests append from block ~-1 ~ ~ Items

#clearing copied containers
data remove block ~-1 ~ ~ Items

#spawning head item according to colour
#red
execute if data entity @s ArmorItems[3].tag.camp{colour:"red"} run loot spawn ~0.5 ~0.5 ~0.5 loot tcamp:heads/tents/small/red

#mark head item
tag @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest] add tcamp.item.modify

#copy camp info from marker head to head item
data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.camp set from entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.camp
#Name
data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.display.Name set from entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.name
#name colour
data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.display.color set from entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.color
#add lore if items are stored
execute if data entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.camp.containers.chests[0].[] run data merge entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] {Item:{tag:{display:{Lore:['{"text":"Has items stored","color":"gray"}']}}}}

#unmark head item
tag @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest] remove tcamp.item.modify


#replace structure with air
setblock ~ ~ ~ structure_block[mode=load]{name:"tcamp:tent_empty/small/tent_small_west",posX:-2,posY:0,posZ:-1,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace
setblock ~ ~1 ~ redstone_block
setblock ~ ~1 ~ air
setblock ~ ~ ~ air

#remove interaction confirmation
execute align xyz positioned ~ ~1 ~ run function tcamp:remove/tent/confirmation/remove/west

kill @s