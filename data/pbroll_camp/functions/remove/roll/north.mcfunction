##
 # north.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#if interacted with head
execute as @e[tag=pbroll_camp.interaction.bedroll.north.head,limit=1,sort=nearest] at @s positioned ~ ~ ~-1 run kill @e[tag=pbroll_camp.interaction.bedroll.north.feet,distance=..0.1,limit=1,sort=nearest]
execute as @e[tag=pbroll_camp.interaction.bedroll.north.head,limit=1,sort=nearest] at @s positioned ~-0.5 ~ ~-0.5 run kill @e[tag=pbroll_camp.block_display.bedroll,distance=..0.1,limit=6,sort=nearest]

execute as @e[tag=pbroll_camp.interaction.bedroll.north.head,limit=1,sort=nearest] run kill @s