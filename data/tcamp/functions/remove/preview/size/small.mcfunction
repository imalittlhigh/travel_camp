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
#colour:
execute as @e[tag=tcamp.marker.clour.red,limit=1,sort=nearest,distance=..1] at @s run loot spawn ~ ~0.5 ~ loot tcamp:heads/tents/small/red

#mark head item
tag @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest] add tcamp.item.modify

#copy camp info from marker head to head item
execute at @s run data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.camp set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..1] ArmorItems[3].tag.camp
#Name
execute at @s run data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.display.Name set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..1] ArmorItems[3].tag.name
#name colour
execute at @s run data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.display.color set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..1] ArmorItems[3].tag.color

#unmark head item
tag @e[type=item,nbt={Item:{tag:{SkullOwner:{Name:"%tcamp.camp"}}}},limit=1,sort=nearest] remove tcamp.item.modify
#kill preview displays, marker and interaction
#interaction
kill @e[tag=tcamp.interaction.tent.setup,limit=1,sort=nearest,distance=..1]
#axes
execute positioned ~-0.5 ~-0.3 ~-0.5 run kill @e[tag=tcamp.blockdisplay.tent.setup.pitch,limit=5,sort=nearest,distance=..1]
#marker
kill @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..1]
#tent preview
execute align xyz run kill @e[tag=tcamp.blockdisplay.tent.preview,distance=..0.1]



