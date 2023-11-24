##
 # durability.mcfunction
 # 
 #
 # Created by imalittlhigh.
##


#@s dummy is the damage of the item in hand here
#resetting damage tracker
scoreboard players reset %tcamp.damage_remove tcamp.dummy
scoreboard players reset @s tcamp.dummy
scoreboard players reset @s tcamp.durability

#summon armorstand to copy item to to get durability
execute at @s run summon armor_stand ~ -100 ~ {NoGravity:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["tcamp","tcamp.marker","tcamp.marker.durability","tcamp.marker.durability.getter"],HandItems:[{id:"minecraft:paper",Count:1b},{}]}
#copy item to armorstand mainhand
execute at @s positioned ~ -100 ~ run item replace entity @e[tag=tcamp.marker.durability.getter,limit=1,sort=nearest,distance=..1] weapon.mainhand from entity @s weapon.mainhand
#getting dura from armorstand
execute at @s positioned ~ -100 ~ store result score @s tcamp.dummy run data get entity @e[tag=tcamp.marker.durability.getter,limit=1,sort=nearest,distance=..1] HandItems[0].tag.Damage

#adjusting the "damage" to be durability (is negative)
execute at @s positioned ~ -100 ~ if data entity @e[tag=tcamp.marker.durability.getter,limit=1,sort=nearest,distance=..1] HandItems[{id:"minecraft:golden_axe"}] run scoreboard players set @s tcamp.durability 32
execute at @s positioned ~ -100 ~ if data entity @e[tag=tcamp.marker.durability.getter,limit=1,sort=nearest,distance=..1] HandItems[{id:"minecraft:wooden_axe"}] run scoreboard players set @s tcamp.durability 59
execute at @s positioned ~ -100 ~ if data entity @e[tag=tcamp.marker.durability.getter,limit=1,sort=nearest,distance=..1] HandItems[{id:"minecraft:stone_axe"}] run scoreboard players set @s tcamp.durability 131
execute at @s positioned ~ -100 ~ if data entity @e[tag=tcamp.marker.durability.getter,limit=1,sort=nearest,distance=..1] HandItems[{id:"minecraft:iron_axe"}] run scoreboard players set @s tcamp.durability 250
execute at @s positioned ~ -100 ~ if data entity @e[tag=tcamp.marker.durability.getter,limit=1,sort=nearest,distance=..1] HandItems[{id:"minecraft:diamond_axe"}] run scoreboard players set @s tcamp.durability 1561
execute at @s positioned ~ -100 ~ if data entity @e[tag=tcamp.marker.durability.getter,limit=1,sort=nearest,distance=..1] HandItems[{id:"minecraft:netherite_axe"}] run scoreboard players set @s tcamp.durability 2031

#removing armorstand
execute at @s positioned ~ -100 ~ run kill @e[tag=tcamp.marker.durability.getter,limit=1,sort=nearest,distance=..1]

#Setting damage the tool should recieve depending on the tent size
execute if entity @e[tag=tcamp.marker.size.small,distance=..1,sort=nearest,limit=1] run scoreboard players set %tcamp.damage_remove tcamp.dummy 15

#adjusting used damage by unbreaking
execute if predicate tcamp:player/enchantments/mainhand/unbreakingi run scoreboard players operation %tcamp.damage_remove tcamp.dummy /= %tcamp.unbreakingi tcamp.dummy
execute if predicate tcamp:player/enchantments/mainhand/unbreakingii run scoreboard players operation %tcamp.damage_remove tcamp.dummy /= %tcamp.unbreakingii tcamp.dummy
execute if predicate tcamp:player/enchantments/mainhand/unbreakingiii run scoreboard players operation %tcamp.damage_remove tcamp.dummy /= %tcamp.unbreakingiii tcamp.dummy

#adding the damage from placing tent to damage already on item
scoreboard players operation @s tcamp.dummy += %tcamp.damage_remove tcamp.dummy

#if durability is higher than damage, go forth
execute if score @s tcamp.durability > @s tcamp.dummy run tag @s add tcamp.player.has_sufficient_durability
#save damage to storage to be able to copy nbt to item in inventory
execute store result storage tcamp:item Damage int 1 run scoreboard players get @s tcamp.dummy

