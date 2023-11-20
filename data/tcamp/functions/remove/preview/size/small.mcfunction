##
 # small.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

function tcamp:remove/preview/effects/sound
function tcamp:remove/preview/effects/visual

execute as @e[tag=tcamp.marker.clour.red,limit=1,sort=nearest,distance=..1] at @s run loot spawn ~ ~0.5 ~ loot tcamp:heads/tents/small/red

tag @e[type=item,nbt={Item:{tag:{SkullOwner:{Id:[I;1,1,1,6],Name:"%tcamp.camp"}}}},limit=1,sort=nearest] add tcamp.item.modify

execute at @s run data modify entity @e[type=item,nbt={Item:{tag:{SkullOwner:{Id:[I;1,1,1,6],Name:"%tcamp.camp"}}}},limit=1,sort=nearest,tag=tcamp.item.modify] Item.tag.camp set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..1] ArmorItems[3].tag.camp

tag @e[type=item,nbt={Item:{tag:{SkullOwner:{Id:[I;1,1,1,6],Name:"%tcamp.camp"}}}},limit=1,sort=nearest] remove tcamp.item.modify

kill @e[tag=tcamp.interaction.tent.setup,limit=1,sort=nearest,distance=..1]
kill @e[tag=tcamp.blockdisplay.tent.setup.pitch,limit=5,sort=nearest,distance=..1]
kill @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..1]