##
 # west.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#as player at interaction

say place west

#remove damage from hand axe (%tcamp.damage tcamp.dummy) is already adjusted with unbreaking
function tcamp:place/tent/check/add_damage

#setting structure
setblock ~ ~ ~ structure_block[mode=load]{name:"tcamp:tent/small/tent_small_west",posX:-2,posY:0,posZ:-1,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace
#triggering structure block
setblock ~ ~1 ~ redstone_block replace
#removeing structure block
setblock ~ ~ ~ air replace
#copying data from marker to container chest 0
execute positioned ~0.5 ~ ~0.5 run data modify block ~-1 ~ ~ Items set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest] ArmorItems[3].tag.camp.containers.chests[0]

#options
#summoning item displays for options and interactions
execute positioned ~ ~1 ~ run function tcamp:place/interactables/options/west

#summoning marker to save size and direction and colour
summon armor_stand ~0.22 ~-0.75 ~0.78 {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["tcamp","tcamp.marker","tcamp.marker.campinfo","tcamp.marker.campinfo.small"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,1,1,1],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDgyZDMxMDMwOTY2MjJkZjA1YzA0NDZkN2RmMGJhMzg4NDFkMDZlMmIzYWRjZDcwNWQ3NWQyNjViM2RhMmY2NCJ9fX0="}]}}}}]}
#savin item stuff to marker head item
#Name
execute positioned ~0.5 ~-0.5 ~0.5 run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.name set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.name
#name colour
execute positioned ~0.5 ~-0.5 ~0.5 run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.color set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.color
#tent colour
execute positioned ~0.5 ~-0.5 ~0.5 run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.camp.colour set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.camp.colour

#set colour function

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