##
 # north.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#as player at interaction

#effects
function tcamp:cardinal/effects/tent/effects/success_place
#removing dura from axe of player - is already adjusted with unbreaking
execute at @s as @a[tag=tcamp.player.has_sufficient_durability] run function tcamp:cardinal/damage_tool/add_damage

#setting structure
setblock ~ ~ ~ structure_block[mode=load]{name:"tcamp:tent/medium/tent_medium_north",posX:-3,posY:0,posZ:-3,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace
#triggering structure block
setblock ~ ~1 ~ redstone_block replace
#removeing structure block
setblock ~ ~ ~ air replace
#removeing redstone block
setblock ~ ~1 ~ air replace
#copying data from marker to container
execute positioned ~0.5 ~ ~0.5 run data modify block ~1 ~1 ~ Items set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest] data.camp.containers.chests[0]
execute positioned ~0.5 ~ ~0.5 run data modify block ~1 ~ ~1 Items set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest] data.camp.containers.chests[1]
execute positioned ~0.5 ~ ~0.5 run data modify block ~1 ~ ~-1 Items set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest] data.camp.containers.furnace[0]

#options
#summoning item displays for options and interactions
execute align xyz positioned ~-1 ~1 ~ run function tcamp:interactables/spawn/options/north

#summoning marker to save size and direction and colour
execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["tcamp","tcamp.marker","tcamp.marker.campinfo","tcamp.marker.campinfo.medium","tcamp.marker.campinfo.intact"]}
#savin item stuff to marker
#Name
execute align xyz positioned ~0.5 ~ ~0.5 run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..1] data.name set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..2] data.name
#name colour
execute align xyz positioned ~0.5 ~ ~0.5 run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..1] data.color set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..2] data.color
#tent colour
execute align xyz positioned ~0.5 ~ ~0.5 run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..1] data.camp.colour set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..2] data.camp.colour
#tent size
execute align xyz positioned ~0.5 ~ ~0.5 run data modify entity @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..1] data.camp.size set from entity @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..2] data.camp.size
#tent direction
execute align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=tcamp.marker.campinfo,limit=1,sort=nearest,distance=..1] add tcamp.marker.campinfo.north

#set colour function
function tcamp:tent/modify/blocks/colour/size/medium/north

#spawn bedroll
execute positioned ~-0.5 ~ ~-0.5 run function pbroll_camp:place/roll/south

#remove preview
#kill preview displays, marker and interaction
#interaction
execute positioned ~ ~0.5 ~ run kill @e[tag=tcamp.interaction.tent.setup,limit=1,sort=nearest,distance=..1]
#axes
execute positioned ~ ~ ~ run kill @e[tag=tcamp.blockdisplay.tent.setup.pitch,limit=7,sort=nearest,distance=..1]
#marker
kill @e[tag=tcamp.marker.hold_campinfo,limit=1,sort=nearest,distance=..1]
#tent preview
execute align xyz run kill @e[tag=tcamp.blockdisplay.tent.preview,distance=..0.1]