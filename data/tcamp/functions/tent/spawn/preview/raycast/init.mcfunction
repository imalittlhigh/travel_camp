##
 # init.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#this adv triggers the raycast from the player
advancement revoke @s only tcamp:placed_head

#summons chest minecart for copy of item tags
summon chest_minecart ~ ~3 ~ {NoGravity:1b,Invulnerable:1b,Tags:["tcamp","tcamp.cart","tcamp.cart.copy_campinfo"]}
#copys placed item to minecraft
execute positioned ~ ~3 ~ run item replace entity @e[tag=tcamp.cart.copy_campinfo,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand
#summons item to copy item tags to
summon item ~ ~ ~ {NoGravity:1b,Age:5900,PickupDelay:32767,Invulnerable:1b,Tags:["tcamp","tcamp.item","tcamp.item.copy_campinfo"],Item:{id:"minecraft:ender_eye",Count:1b,tag:{camp:{}}}}
#copies item tags
data modify entity @e[tag=tcamp.item.copy_campinfo,limit=1,sort=nearest] Item.tag.camp set from entity @e[tag=tcamp.cart.copy_campinfo,limit=1,sort=nearest] Items[0].tag.camp
#copies item name
data modify entity @e[tag=tcamp.item.copy_campinfo,limit=1,sort=nearest] Item.tag.name set from entity @e[tag=tcamp.cart.copy_campinfo,limit=1,sort=nearest] Items[0].tag.display.Name
data modify entity @e[tag=tcamp.item.copy_campinfo,limit=1,sort=nearest] Item.tag.color set from entity @e[tag=tcamp.cart.copy_campinfo,limit=1,sort=nearest] Items[0].tag.display.color
#removes item from minecart
execute positioned ~ ~3 ~ run item replace entity @e[tag=tcamp.cart.copy_campinfo,limit=1,sort=nearest] container.0 with air
#removes minecart
execute positioned ~ ~3 ~ run kill @e[tag=tcamp.cart.copy_campinfo,limit=1,sort=nearest]


#this score is to not run the cast forever (so limit how far it can travel)
scoreboard players set %tcamp.i tcamp.dummy 0

#this starts the cast at the players eyes and executes the cast loop
execute at @s anchored eyes positioned ^ ^ ^0.2 run function tcamp:tent/spawn/preview/raycast/loop
