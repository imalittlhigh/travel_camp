##
 # south.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#as player at interaction

say place south

#remove damage from hand axe (%tcamp.damage tcamp.dummy) is already adjusted with unbreaking
function tcamp:place/tent/check/add_damage

#setting structure
setblock ~ ~ ~ structure_block[mode=load]{name:"tcamp:tent/small/tent_small_south",posX:-1,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace
#triggering structure block
setblock ~ ~1 ~ redstone_block replace
#removeing structure block
setblock ~ ~ ~ air replace
#copying data from marker to container chest 0
execute positioned ~0.5 ~ ~0.5 run data modify block ~ ~ ~1 Items set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest] ArmorItems[3].tag.camp.containers.chests[0]


#remove preview
#kill preview displays, marker and interaction
#interaction
execute positioned ~ ~0.5 ~ run kill @e[tag=tcamp.interaction.tent.setup,limit=1,sort=nearest,distance=..1]
#axes
execute positioned ~ ~ ~ run kill @e[tag=tcamp.blockdisplay.tent.setup.pitch,limit=5,sort=nearest,distance=..1]
#marker
kill @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..1]
#tent preview
execute align xyz run kill @e[tag=tcamp.blockdisplay.tent.preview,distance=..0.1]