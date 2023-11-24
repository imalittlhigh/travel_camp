##
 # west.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#as player at interaction

say place west

#removing dura from axe of player - is already adjusted with unbreaking
execute at @s as @a[tag=tcamp.player.has_sufficient_durability] run function tcamp:cardinal/damage_tool/add_damage


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
execute positioned ~ ~1 ~ run function tcamp:interactables/spawn/options/west

#summoning marker to save size and direction and colour
execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["tcamp","tcamp.marker","tcamp.marker.campinfo","tcamp.marker.campinfo.small"]}
#savin item stuff to marker
#Name
execute align xyz positioned ~0.5 ~ ~0.5 run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..1] data.name set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.name
#name colour
execute align xyz positioned ~0.5 ~ ~0.5 run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..1] data.color set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.color
#tent colour
execute align xyz positioned ~0.5 ~ ~0.5 run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..1] data.camp.colour set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.camp.colour
#tent size
execute align xyz positioned ~0.5 ~ ~0.5 run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..1] data.camp.size set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.camp.size


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