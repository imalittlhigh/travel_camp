##
 # small.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

#add effects for removal
function tcamp:remove/preview/effects/sound
function tcamp:remove/preview/effects/visual

#spawn head item
execute as @e[tag=tcamp.marker.clour.red,limit=1,sort=nearest,distance=..1] at @s run loot spawn ~ ~0.5 ~ loot tcamp:heads/tents/small/red
#mark head item
tag @e[type=item,nbt={Item:{tag:{SkullOwner:{Id:[I;1,1,1,6],Name:"%tcamp.camp"}}}},limit=1,sort=nearest] add tcamp.item.modify
#copy camp info from marker head to head item
execute at @s run data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Id:[I;1,1,1,6],Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.camp set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..1] ArmorItems[3].tag.camp
#unmark head item
tag @e[type=item,nbt={Item:{tag:{SkullOwner:{Id:[I;1,1,1,6],Name:"%tcamp.camp"}}}},limit=1,sort=nearest] remove tcamp.item.modify
#kill previwe displays, marker and interaction
kill @e[tag=tcamp.interaction.tent.setup,limit=1,sort=nearest,distance=..1]
kill @e[tag=tcamp.blockdisplay.tent.setup.pitch,limit=5,sort=nearest,distance=..1]
kill @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..1]